import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/widgets/student_widgets.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CategoryDetailPage extends StatelessWidget {
  final CourseCategory category;
  final List<Course> courses = Course.courses;

  CategoryDetailPage({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: category.id.value,
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: App.height * 0.2,
            leading: IconButton(
              icon: const Icon(Icons.keyboard_backspace_rounded),
              onPressed: () => inner(context).pop(),
              color: Helpers.computeLuminance(
                category.gradient.value.fold((l) => null, (r) => r?.asList()?.first),
              ),
            ),
            backgroundColor: category.gradient.value.fold((l) => null, (r) => r?.asList()?.first),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsetsDirectional.only(start: 72, bottom: 10),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AutoSizeText(
                    category.title.value.fold((l) => "", id),
                    maxLines: 1,
                    style: TextStyle(
                      color: Helpers.computeLuminance(
                        category.gradient.value.fold((l) => null, (r) => r?.asList()?.first),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: AutoSizeText(
                      category.description.value.fold((l) => "", id),
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Helpers.computeLuminance(
                          category.gradient.value.fold((l) => null, (r) => r?.asList()?.first),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              background: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0, top: 30.0),
                  child: SvgPicture.asset(
                    category.icon.fullPath,
                    color: Colors.white.withOpacity(0.13),
                    height: App.height * 0.16,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding, vertical: Helpers.appPadding),
                  child: const AutoSizeText(
                    "Available Courses",
                    minFontSize: 16.0,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
                  ),
                ),
                //
                ListView.separated(
                  physics: Helpers.physics,
                  controller: ScrollController(),
                  padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: courses.length,
                  separatorBuilder: (_, i) => VerticalSpace(height: App.height * 0.01),
                  itemBuilder: (context, i) => CourseCardWidget(
                    course: courses.elementAt(i),
                    image: AppAssets.courseFrame1,
                    height: App.height * 0.13,
                    progress: 0.72,
                    showRating: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
