import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart' hide Image;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_crop_widget/image_crop_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/utils/utils.dart';

part 'profile_image_cubit.freezed.dart';
part 'profile_image_state.dart';

@injectable
class ProfileImageCubit extends Cubit<ProfileImageState> {
  final ImagePicker _picker = ImagePicker();

  ProfileImageCubit() : super(ProfileImageState.init());

  Future<void> init({File file, GlobalKey<ImageCropState> key}) async {
    if (!file.isNull) {
      final bytes = file.readAsBytesSync();
      final codec = await instantiateImageCodec(bytes);
      final frame = await codec.getNextFrame();

      emit(state.copyWith(image: file, img: frame.image, bytes: bytes));
    }
    if (!key.isNull) emit(state.copyWith(cropKey: key));
  }

  void showLoader() => emit(state.copyWith(isLoading: true));

  void removeLoader() => emit(state.copyWith(isLoading: false));

  void shouldShowImagePicker([bool value]) {
    emit(state.copyWith(showPicker: value ?? !state.showPicker));
  }

  void pickImage(ImageSource source) async {
    emit(state.copyWith(showPicker: false, isLoading: false));

    final PickedFile pickedFile = await _picker.getImage(source: source);

    if (pickedFile != null) {
      emit(state.copyWith(
        image: File(pickedFile.path),
        pickedFile: pickedFile,
        source: source,
      ));
    }

    await _retrieveLostData();

    removeLoader();
  }

  Future<void> _retrieveLostData() async {
    final LostData lost = await _picker.getLostData();
    if (lost.isEmpty) return;
    if (lost.file != null) {
      emit(state.copyWith(
        image: File(lost.file.path),
        pickedFile: lost.file,
      ));
    } else
      log.e("Some error in Image Picker: ", lost.exception);
  }

  Future<void> crop(GlobalKey<ImageCropState> key) async {
    showLoader();

    reemit(img: null);
    // Crop image via selected area
    final croppedImage = await key.currentState.cropImage();

    // Converts the Image object into a byte array
    final byte = await croppedImage.toByteData(format: ImageByteFormat.png);

    // Creates a Uint8List view of a region of this byte buffer
    final byteList = byte.buffer.asUint8List();

    final codec = await instantiateImageCodec(byteList);
    final frame = await codec.getNextFrame();

    emit(state.copyWith(bytes: byteList, cropKey: GlobalKey<ImageCropState>(), img: frame.image));
    // Remove loader
    removeLoader();
  }

  void reemit({
    File image,
    GlobalKey<ImageCropState> key,
    Image img,
    Uint8List bytes,
    ImageSource source,
  }) =>
      emit(state.copyWith(
        image: image,
        cropKey: key,
        img: img,
        bytes: bytes,
        source: source ?? state.source,
      ));

  Future<void> reset() async => emit(ProfileImageState.init());
}
