import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ShowChildPage extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    final Student student = getIt<AuthFacade>().currentUser.getOrElse(() => null).sampleStudent;

    return Scaffold(
      body: Hero(
        tag: "3",
        child: CustomScrollView(
          shrinkWrap: true,
          clipBehavior: Clip.antiAlias,
          physics: Helpers.physics,
          slivers: [
            SliverAppBar(
              pinned: false,
              expandedHeight: App.height * 0.2,
              backgroundColor: Theme.of(context).accentColor,
              leading: IconButton(
                icon: const Icon(Icons.keyboard_backspace_rounded),
                onPressed: () => inner(context).pop(),
                color: Colors.white,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              flexibleSpace: Stack(
                children: [
                  FlexibleSpaceBar(
                    centerTitle: true,
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        AutoSizeText(
                          student.displayName.getOrEmpty,
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                        ),
                        //
                        VerticalSpace(height: 6.0),
                        //
                        ExtendedImage.network(
                          student?.photoURL,
                          fit: BoxFit.fill,
                          height: App.height * 0.04,
                          shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(100.0),
                          clipBehavior: Clip.antiAlias,
                          clearMemoryCacheIfFailed: false,
                          handleLoadingProgress: true,
                          retries: 999899,
                          isAntiAlias: true,
                          loadStateChanged: (state) {
                            switch (state.extendedImageLoadState) {
                              case LoadState.loading:
                                return CircularProgressBar.adaptive(
                                  width: App.width * 0.06,
                                  height: App.width * 0.06,
                                  strokeWidth: 3,
                                  radius: 12,
                                );
                              case LoadState.completed:
                                return state.completedWidget;
                              case LoadState.failed:
                                return Center(child: Icon(Icons.error, color: Theme.of(context).accentColor));
                              default:
                                return Center(child: Icon(Icons.error, color: Theme.of(context).accentColor));
                            }
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding, vertical: Helpers.appPadding),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Helpers.appPadding,
                  mainAxisSpacing: Helpers.appPadding,
                ),
                delegate: SliverChildListDelegate([
                  cardBuilder(
                    context,
                    color: AppColors.fromHex("#5FA2FF"),
                    title: "Courses",
                    icon: Smartlets.book_filled,
                    onTap: () => inner(context).pushChildCoursesPage(),
                  ),
                  cardBuilder(
                    context,
                    color: AppColors.fromHex("#FF5994"),
                    title: "Projects",
                    icon: Smartlets.project_idea,
                    onTap: () => inner(context).pushChildProjectsPage(),
                  ),
                  cardBuilder(
                    context,
                    color: AppColors.fromHex("#FECD00, 100%"),
                    title: "Rewards",
                    icon: Smartlets.star_award,
                    onTap: () => inner(context).pushChildAwardsPage(),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardBuilder(
    BuildContext context, {
    @required String title,
    @required IconData icon,
    double iconSize = 25.0,
    @required Color color,
    double fontSize = 18.0,
    @required VoidCallback onTap,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      child: InkWell(
        onTap: onTap,
        splashColor: Helpers.optionOf(Colors.grey.shade300, Colors.grey, context: context),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    icon,
                    size: iconSize,
                    color: Helpers.computeLuminance(color),
                  ),
                ),
                //
                VerticalSpace(height: 16.0),
                //
                AutoSizeText(
                  title,
                  style: TextStyle(
                    color: color,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
