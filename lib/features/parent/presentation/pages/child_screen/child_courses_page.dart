import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/widgets/student_widgets.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ChildCoursesPage extends StatelessWidget with AutoRouteWrapper {
  final String tag;

  const ChildCoursesPage(this.tag, {Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: tag,
        child: CustomScrollView(
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
                          tag,
                          maxLines: 1,
                          style: TextStyle(color: Colors.white),
                        ),
                        //
                        VerticalSpace(height: 8.0),
                        //
                        AppAssets.coursesSvg,
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding, vertical: Helpers.appPadding),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, i) => Column(
                    children: [
                      CourseCardWidget(
                        course: Course.courses.first,
                        image: AppAssets.courseFrame1,
                        showProgress: true,
                        useAltDurationAndLesson: true,
                        backgroundColor: Helpers.optionOf(Colors.grey.shade200, Colors.grey.shade700),
                        progress: 0.417,
                      ),
                      //
                      VerticalSpace(height: App.height * 0.02),
                    ],
                  ),
                  childCount: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
