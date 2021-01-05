import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_crop_widget/image_crop_widget.dart';
import 'package:smartlets/features/auth/data/repositories/export.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/theme/theme.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class EditImageScreen extends StatelessWidget with AutoRouteWrapper {
  final File file;

  EditImageScreen({Key key, this.file}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<StorageCubit>(), lazy: true),
          BlocProvider(
            create: (_) => getIt<ProfileImageCubit>()..init(file: file, key: GlobalKey<ImageCropState>()),
            lazy: true,
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.dark()
          .copyWith(
            scaffoldBackgroundColor: Colors.black,
            bottomSheetThemeData: BottomSheetThemeData(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              modalBackgroundColor: Colors.transparent,
            ),
          )
          .themeData(),
      child: BlocBuilder<ProfileImageCubit, ProfileImageState>(
        builder: (context, state) => Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: Toolbar(
            implyLeading: true,
            backgroundColor: Colors.black.withOpacity(0.5),
            actions: [
              BlocBuilder<StorageCubit, StorageState>(
                builder: (context, _) => Visibility(
                  visible: !context.watch<StorageCubit>().state.isLoading,
                  replacement: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Center(
                      child: CircularProgressBar.adaptive(
                        value: context.watch<StorageCubit>().state.uploadTask?.progress,
                        strokeWidth: 2.5,
                      ),
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.check_rounded),
                    onPressed: () async {
                      context.read<StorageCubit>().showLoader();

                      final path = await getIt<FirebaseStorageFacade>().profilePhotoRef;

                      context.read<StorageCubit>().uploadUint8ListImage(path, state.bytes, onDone: (url) async {
                        await getIt<UserAuthImpl>().update(User(photoURL: url));
                        navigator.pop();
                      });
                    },
                    tooltip: "Save",
                  ),
                ),
              ),
            ],
          ),
          body: Center(
            child: Builder(
              builder: (_) {
                if (context.read<ProfileImageCubit>().state.img == null || context.read<ProfileImageCubit>().state.isLoading)
                  return Center(
                    child: CircularProgressBar.adaptive(
                      strokeWidth: 2.5,
                    ),
                  );
                return ImageCrop(
                  key: context.read<ProfileImageCubit>().state.cropKey,
                  image: context.read<ProfileImageCubit>().state.img,
                );
              },
            ),
          ),
          bottomSheet: BottomSheet(
            onClosing: () {},
            clipBehavior: Clip.antiAlias,
            enableDrag: false,
            elevation: 0.0,
            builder: (context) => Container(
              height: App.height * 0.1,
              width: double.infinity,
              color: Colors.black.withOpacity(0.5),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: App.width * 0.06),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () => navigator.pop(),
                      child: AutoSizeText(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                        softWrap: true,
                        minFontSize: 13.0,
                      ),
                      style: ButtonStyle(
                        enableFeedback: true,
                        overlayColor: MaterialStateProperty.all<Color>(Colors.white12),
                        shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(App.height * 0.022)),
                      ),
                    ),
                    //
                    Spacer(),
                    //
                    BlocBuilder<StorageCubit, StorageState>(
                      builder: (context, _) => Visibility(
                        visible: !context.watch<StorageCubit>().state.isLoading,
                        child: IconButton(
                          icon: Icon(Icons.crop),
                          onPressed: () => context.read<ProfileImageCubit>().crop(state.cropKey),
                          tooltip: "Crop Photo",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
