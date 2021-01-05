import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as p;
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';

extension FirebaseStorageFacadeX on FirebaseStorageFacade {
  Future<String> get profilePhotoRef async {
    final user = await BlocProvider.of<AuthWatcherCubit>(App.context).future;
    return this
        .ref()
        .child(StorageConstants.USERS_FOLDER_NAME) // users
        .child(user?.role?.name?.pluralize()) // students
        .child(user?.id?.value) // sjhoijf980urrnrior-r43r34-s
        .child(StorageConstants.PROFILE_FOLDER_NAME) // avatar
        .child(p.setExtension(user?.id?.value, StorageConstants.PROFILE_PHOTO_EXTENSION))
        .reference
        .fullPath;
  }
}
