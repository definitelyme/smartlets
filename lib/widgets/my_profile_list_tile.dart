import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class MyProfileListTile<E extends BaseUser> extends StatelessWidget {
  final E domain;

  const MyProfileListTile({Key key, this.domain}) : super(key: key);

  void _onImagePressed(BuildContext context) async {
    //  return Navigator.push(context, MaterialPageRoute(builder: (_) => ImageCropper(frame.image)));
    await context.read<PermissionsCubit>().requestStoragePermissions();
    if (context.read<PermissionsCubit>().state.hasStoragePermissions) context.read<ProfileImageCubit>().shouldShowImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: App.height * 0.008, horizontal: App.width * 0.05),
          child: Row(
            children: [
              Flexible(
                child: Stack(
                  children: [
                    Positioned(
                      child: Material(
                        color: Colors.transparent,
                        type: MaterialType.card,
                        shape: RoundedRectangleBorder(),
                        borderOnForeground: false,
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => _onImagePressed(context),
                          splashColor: Colors.grey,
                          borderRadius: BorderRadius.circular(100.0),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            placeholderFadeInDuration: Duration(milliseconds: 300),
                            imageUrl: domain?.photoURL != null && domain.photoURL.isNotEmpty
                                ? domain?.photoURL
                                : AppAssets.onlineAnonymous,
                            imageBuilder: (context, provider) => CircleAvatar(
                              backgroundImage: provider,
                              backgroundColor: Theme.of(context).accentColor,
                              radius: 30.0,
                            ),
                            progressIndicatorBuilder: (_, url, download) {
                              return Center(
                                child: CircularProgressBar.adaptive(
                                  width: App.width * 0.07,
                                  height: App.width * 0.07,
                                  value: download?.progress,
                                  strokeWidth: 2.8,
                                ),
                              );
                            },
                            errorWidget: (context, url, error) => CircleAvatar(
                              backgroundImage: AssetImage(AppAssets.anonymous),
                              backgroundColor: Theme.of(context).accentColor,
                              radius: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Visibility(
                        visible: domain != null && domain.photoURL.isNotEmpty,
                        child: BlocConsumer<ProfileImageCubit, ProfileImageState>(
                          listenWhen: (p, c) => !c.image.isNull,
                          listener: (context, state) async {
                            await navigator.pushEditImageScreen(file: state.image);
                            await context.read<ProfileImageCubit>().reset();
                          },
                          builder: (context, state) => PortalEntry(
                            visible: context.watch<ProfileImageCubit>().state.showPicker,
                            // topCenter(Almost)
                            portalAnchor: Alignment(-0.15, -1.0),
                            childAnchor: Alignment.bottomRight,
                            portal: Material(
                              elevation: 2,
                              color: Helpers.optionOf(Colors.grey.shade200, Colors.grey.shade800),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                              child: Container(
                                width: 170,
                                height: 70,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    imagePickerWidget(
                                      icon: AppAssets.camera,
                                      title: "Camera",
                                      onPressed: () => context.read<ProfileImageCubit>().pickImage(ImageSource.camera),
                                    ),
                                    VerticalDivider(
                                      indent: 12.0,
                                      endIndent: 12.0,
                                      width: 0.0,
                                    ),
                                    imagePickerWidget(
                                      icon: AppAssets.gallery,
                                      title: "Gallery",
                                      onPressed: () => context.read<ProfileImageCubit>().pickImage(ImageSource.gallery),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            child: Material(
                              color: Theme.of(context).accentColor,
                              type: MaterialType.circle,
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                onTap: () => _onImagePressed(context),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 4.0,
                                  ),
                                  child: Icon(
                                    Icons.photo_camera,
                                    color: Colors.white,
                                    semanticLabel: "Choose photo",
                                    size: 15.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              HorizontalSpace(width: App.height * 0.02),
              //
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    holder(
                      AutoSizeText(
                        "${domain?.displayName?.getOrEmpty}",
                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                      ),
                      condition: domain?.displayName?.getOrNull != null && domain.displayName.getOrEmpty.isNotEmpty,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.005),
                    //
                    holder(
                      AutoSizeText(
                        "${domain?.email?.getOrEmpty}",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      condition: domain?.email?.getOrNull != null && domain.email.getOrEmpty.isNotEmpty,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget holder(Widget area, {bool condition = true}) {
    return Visibility(
      visible: condition,
      child: area,
    );
  }

  Widget imagePickerWidget({VoidCallback onPressed, Widget icon, String title}) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 4,
            child: IconButton(
              onPressed: onPressed,
              icon: icon,
              enableFeedback: true,
              splashRadius: 25,
            ),
          ),
          Flexible(
            flex: 3,
            child: AutoSizeText(
              title,
              minFontSize: 10,
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
