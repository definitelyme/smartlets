part of 'profile_image_cubit.dart';

@freezed
@immutable
abstract class ProfileImageState implements _$ProfileImageState {
  @protected
  const ProfileImageState._();

  const factory ProfileImageState({
    @nullable File image,
    @nullable PickedFile pickedFile,
    @nullable GlobalKey<ImageCropState> cropKey,
    @nullable Uint8List bytes,
    @nullable Image img,
    @Default(ImageSource.gallery) ImageSource source,
    @Default(false) bool isLoading,
    @Default(false) bool showPicker,
  }) = _ProfileImageState;

  factory ProfileImageState.init() => ProfileImageState();
}
