import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/shared/domain/repository/firebase_storage_facade.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'storage_cubit.freezed.dart';
part 'storage_state.dart';

@injectable
class StorageCubit extends Cubit<StorageState> {
  final FirebaseStorageFacade _facade;

  StorageCubit(this._facade) : super(StorageState.init());

  void showLoader() => emit(state.copyWith(isLoading: true));

  void removeLoader() => emit(state.copyWith(isLoading: false));

  void uploadUint8ListImage(
    String path,
    Uint8List data, {
    Metadata meta,
    Future<void> Function(String) onDone,
  }) async {
    showLoader();

    StreamSubscription<Either<FirebaseStorageFailure, TaskProgress>> _uploadSubscription;

    _uploadSubscription = _facade.ref(path).streamRawDataUpload(data, metadata: meta).listen((task) async {
      await task?.fold((failure) async {
        emit(state.copyWith(failure: some(failure)));
      }, (_t) async {
        // Emit new states
        emit(state.copyWith(uploadTask: _t.copyWith(progress: _t.progress <= 0.1 ? 0.1 : _t.progress)));

        if (!_t.isRunning) {
          final _downloadURL = await _facade.ref("${_t?.metadata?.fullPath}").getDownloadURL;

          // Emit new states
          _downloadURL.fold(
            (failure) => emit(state.copyWith(failure: some(failure))),
            (url) => emit(state.copyWith(uploadTask: _t.copyWith(downloadUrl: url))),
          );

          await _uploadSubscription?.cancel();

          // Emit new states
          emit(state.copyWith(failure: none()));

          await onDone?.call(_downloadURL?.getOrElse(() => null));

          removeLoader();
        }
      });
    }, cancelOnError: true);
  }
}
