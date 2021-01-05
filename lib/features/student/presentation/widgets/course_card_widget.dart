import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class CourseCardWidget extends StatelessWidget {
  final Course course;
  final double height;
  final double radius;
  final double imageRadius;
  final double progress;
  final String image;
  final Color backgroundColor;
  final bool showProgress;
  final bool showRating;
  final bool useAltDurationAndLesson;
  final bool showDurationAndLesson;

  CourseCardWidget({
    Key key,
    @required this.course,
    @required this.progress,
    double height,
    this.radius = 16.0,
    this.imageRadius = 8.0,
    @required this.image,
    this.backgroundColor = Colors.transparent,
    this.showProgress = false,
    this.showRating = false,
    this.useAltDurationAndLesson = false,
    this.showDurationAndLesson = false,
  })  : height = height ?? App.height * 0.13,
        super(key: key);

  Image _image(String image, [bool isNetwork = false]) {
    if (image != null && isNetwork) return Image.network(image);
    return Image.asset("$image", fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: useAltDurationAndLesson ? backgroundColor : Colors.transparent,
      type: MaterialType.card,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: useAltDurationAndLesson ? backgroundColor : AppColors.fromHex("#EBECED"),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: InkWell(
        onTap: () => ExtendedNavigator.root.pushCourseDetailScreen(course: course),
        splashColor: Helpers.optionOf(Colors.grey.shade300, Colors.grey.shade600, context: context),
        child: Container(
          height: height,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: App.height * 0.012, horizontal: App.height * 0.012),
          child: Row(
            children: [
              Flexible(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(imageRadius),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: _image(image),
                ),
              ),
              //
              HorizontalSpace(width: App.width * 0.035),
              //
              Expanded(
                flex: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            if (!useAltDurationAndLesson) return Container();
                            return Flexible(
                              child: AutoSizeText.rich(
                                TextSpan(children: [
                                  if (course.lessons > 0) ...[
                                    span(count: course.lessons, item: "lesson", counterFontWeight: FontWeight.normal),
                                    TextSpan(
                                      text: "  \u2022  ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).accentColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                  TextSpan(
                                    text: "2 Completed",
                                    style: TextStyle(
                                      color: Theme.of(context).accentColor,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ]),
                                maxLines: 1,
                              ),
                            );
                          }),
                          //
                          Flexible(
                            flex: 2,
                            child: AutoSizeText(
                              "${course.title.value.getOrElse(() => "")}",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                              maxLines: 2,
                              softWrap: true,
                              wrapWords: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          //
                          Builder(builder: (context) {
                            if (!showDurationAndLesson) return Container();
                            return Visibility(
                              visible: course.duration.inMinutes.remainder(60) > 0,
                              child: Flexible(
                                child: AutoSizeText.rich(
                                  TextSpan(children: [
                                    if (course.duration.inHours > 0) span(count: course.duration.inHours, item: "hour"),
                                    if (course.duration.inMinutes.remainder(60) > 0) ...[
                                      TextSpan(text: "  "),
                                      span(count: course.duration.inMinutes.remainder(60), item: "minute"),
                                    ],
                                    if (course.lessons > 0) ...[
                                      TextSpan(
                                        text: "   \u2022   ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).accentColor,
                                          fontSize: 16,
                                        ),
                                      ),
                                      span(count: course.lessons, item: "lesson"),
                                    ],
                                  ]),
                                  maxLines: 1,
                                  minFontSize: 7,
                                  wrapWords: false,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            );
                          }),
                          //
                          Builder(builder: (context) {
                            if (!showRating) return Container();
                            return Flexible(
                              child: RatingBarIndicator(
                                rating: course.rating.getOrCrash,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: App.height * 0.02,
                                direction: Axis.horizontal,
                              ),
                            );
                          }),
                          //
                          Builder(builder: (context) {
                            if (!showProgress) return Container();
                            return Flexible(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100.0),
                                      child: LinearProgressIndicator(
                                        value: progress,
                                        backgroundColor: backgroundColor == Colors.transparent
                                            ? Helpers.optionOf(
                                                Colors.grey.shade300,
                                                Colors.grey.shade700,
                                              )
                                            : Helpers.computeLuminance(backgroundColor).withOpacity(0.15),
                                      ),
                                    ),
                                  ),
                                  //
                                  HorizontalSpace(width: 12.0),
                                  //
                                  AutoSizeText(
                                    "${(progress * 100).toStringAsPrecision(3)}%",
                                    style: TextStyle(fontSize: 13),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                    //
                    Icon(Icons.keyboard_arrow_right_rounded, size: 22.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InlineSpan span({
    int count = 0,
    @required String item,
    double itemFontSize = 14.0,
    FontWeight counterFontWeight = FontWeight.w600,
    double counterFontSize = 14.0,
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
    ]);
  }
}
