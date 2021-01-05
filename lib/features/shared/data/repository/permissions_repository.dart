import 'package:injectable/injectable.dart';
import 'package:permissions_plugin/permissions_plugin.dart';

@lazySingleton
class PermissionsRepository {
  Future<bool> checkOrRequestStoragePermissions() async {
    Map<Permission, PermissionState> status = await PermissionsPlugin.checkPermissions([
      Permission.CAMERA,
      Permission.READ_EXTERNAL_STORAGE,
      Permission.WRITE_EXTERNAL_STORAGE,
    ]);

    bool hasPermissions = status.entries.fold(true, (p, next) => p && next.value == PermissionState.GRANTED);

    if (!hasPermissions)
      status = await PermissionsPlugin.requestPermissions([
        Permission.CAMERA,
        Permission.READ_EXTERNAL_STORAGE,
        Permission.WRITE_EXTERNAL_STORAGE,
      ]);

    return status.entries.fold(true, (p, next) => p && next.value == PermissionState.GRANTED);
  }
}
