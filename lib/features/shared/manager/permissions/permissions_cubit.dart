import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/shared/data/repository/permissions_repository.dart';

part 'permissions_cubit.freezed.dart';
part 'permissions_state.dart';

@singleton
class PermissionsCubit extends Cubit<PermissionsState> {
  final PermissionsRepository _repo;

  PermissionsCubit(this._repo) : super(PermissionsState());

  Future<void> requestStoragePermissions() async {
    emit(state.copyWith(isLoading: true));

    final hasPermissions = await _repo.checkOrRequestStoragePermissions();

    emit(state.copyWith(isLoading: false, hasStoragePermissions: hasPermissions));
  }
}
