import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/screens/course_details/video_widget.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

part 'package:smartlets/features/student/presentation/screens/course_details/instructor_tile.dart';
part 'package:smartlets/features/student/presentation/screens/course_details/tabbed_widget.dart';
part 'package:smartlets/features/student/presentation/screens/course_details/tabs/about_tab_widget.dart';
part 'package:smartlets/features/student/presentation/screens/course_details/tabs/discussion_tab_widget.dart';
part 'package:smartlets/features/student/presentation/screens/course_details/tabs/lessons_tab_widget.dart';

class CourseDetailIndexPage extends StatefulWidget with AutoRouteWrapper {
  final Course course;

  CourseDetailIndexPage({Key key, @required this.course}) : super(key: key);

  @override
  _CourseDetailIndexPageState createState() => _CourseDetailIndexPageState();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _CourseDetailIndexPageState extends State<CourseDetailIndexPage> with AutomaticKeepAliveClientMixin {
  final ScrollController controller = ScrollController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                    child: VerticalSpace(
                      height: App.height * 0.18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              "Design",
                              minFontSize: 17.0,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Flexible(
                            child: AutoSizeText(
                              widget.course.title.value.getOrElse(() => ""),
                              maxLines: 3,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              softWrap: true,
                              wrapWords: true,
                            ),
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(Smartlets.clock_icon, size: 20.0, color: AppColors.fromHex("#6E798C")),
                                    //
                                    AutoSizeText.rich(
                                      TextSpan(children: [
                                        TextSpan(text: " "),
                                        //
                                        if (widget.course.duration.inHours > 0)
                                          span(count: widget.course.duration.inHours, item: "hour"),
                                        //
                                        if (widget.course.duration.inMinutes.remainder(60) > 0) ...[
                                          TextSpan(text: "  "),
                                          span(count: widget.course.duration.inMinutes.remainder(60), item: "minute"),
                                        ],
                                      ]),
                                      maxLines: 1,
                                      wrapWords: false,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                                //
                                Row(
                                  children: [
                                    Icon(Smartlets.lesson_icon, size: 20.0, color: AppColors.fromHex("#6E798C")),
                                    //
                                    AutoSizeText.rich(
                                      TextSpan(children: [
                                        TextSpan(text: "  "),
                                        //
                                        span(count: widget.course.lessons, item: "lesson"),
                                      ]),
                                    )
                                  ],
                                ),
                                //
                                Row(
                                  children: [
                                    Icon(Smartlets.account, color: AppColors.fromHex("#6E798C")),
                                    //
                                    // TODO: Use correct figure here
                                    AutoSizeText(
                                      "500",
                                      minFontSize: 16.0,
                                      maxLines: 1,
                                      style: TextStyle(color: AppColors.fromHex("#6E798C")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  VideoWidget(),
                  //
                  Column(
                    children: [
                      _InstructorTile(),
                      //
                      Divider(
                        thickness: 0.7,
                        height: 0.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              fillOverscroll: Platform.isIOS,
              child: TabbedWidget(),
            ),
          ],
        ),
      ),
    );
  }

  InlineSpan span({
    int count = 0,
    @required String item,
    double itemFontSize = 16.0,
    FontWeight counterFontWeight = FontWeight.w600,
    double counterFontSize = 17.0,
  }) {
    return TextSpan(children: [
      TextSpan(
        text: "$count",
        style: TextStyle(fontWeight: counterFontWeight, fontSize: counterFontSize),
      ),
      TextSpan(text: " ", style: TextStyle(fontSize: 13.0)),
      TextSpan(
        text: item.pluralize(count),
        style: TextStyle(fontSize: itemFontSize),
      ),
    ], style: TextStyle(color: AppColors.fromHex("#6E798C"), fontSize: 17.0));
  }
}
