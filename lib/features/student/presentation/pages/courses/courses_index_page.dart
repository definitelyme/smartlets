import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/widgets/student_widgets.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CoursesIndexPage extends StatelessWidget {
  final List<Course> courses = Course.courses.take(2).toList();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          pinned: true,
          centerTitle: true,
          automaticallyImplyLeading: true,
          title: AutoSizeText(
            "My Courses",
            minFontSize: 20.0,
            style: TextStyle(color: Helpers.computeLuminance(Theme.of(context).accentColor), fontSize: 25.0),
          ),
          toolbarHeight: App.height * 0.07,
          backgroundColor: Theme.of(context).accentColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        //
        SliverList(
          delegate: SliverChildListDelegate(
            [
              ListView.separated(
                physics: Helpers.physics,
                controller: ScrollController(),
                padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding).copyWith(top: App.width * 0.03),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: courses.length,
                separatorBuilder: (_, i) => VerticalSpace(height: App.height * 0.01),
                itemBuilder: (context, i) => CourseCardWidget(
                  image: AppAssets.courseFrame1,
                  course: courses.elementAt(i),
                  height: App.height * 0.13,
                  progress: 0.72,
                  showProgress: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
