part of 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';

class AboutTabWidget extends StatelessWidget {
  static const String name = "About";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.width * 0.04, vertical: App.height * 0.02),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          AutoSizeText(
            "About this course",
            minFontSize: 15.0,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
          ),
          //
          VerticalSpace(height: App.height * 0.01),
          //
          AutoSizeText(
            "Learn how to design a website that stands out from the crowd.",
            style: TextStyle(fontSize: 15.0),
            maxLines: 2,
            softWrap: true,
          ),
          //
          VerticalSpace(height: App.height * 0.02),
          //
          AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(text: "Skill level: ", style: TextStyle(color: Colors.grey)),
                TextSpan(text: "All levels"),
              ],
            ),
            maxLines: 1,
            style: TextStyle(fontSize: 15.0),
          ),
          //
          VerticalSpace(height: App.height * 0.01),
          //
          AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(text: "Students: ", style: TextStyle(color: Colors.grey)),
                TextSpan(text: "500"),
              ],
            ),
            maxLines: 1,
            style: TextStyle(fontSize: 15.0),
          ),
          //
          VerticalSpace(height: App.height * 0.01),
          //
          AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(text: "Language: ", style: TextStyle(color: Colors.grey)),
                TextSpan(text: "English"),
              ],
            ),
            maxLines: 1,
            style: TextStyle(fontSize: 15.0),
          ),
          //
          VerticalSpace(height: App.height * 0.01),
          //
          AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(text: "Total time: ", style: TextStyle(color: Colors.grey)),
                TextSpan(text: "42 hours"),
              ],
            ),
            maxLines: 1,
            style: TextStyle(fontSize: 15.0),
          ),
          //
          VerticalSpace(height: App.height * 0.01),
          //
          AutoSizeText.rich(
            TextSpan(
              children: [
                TextSpan(text: "Lessons: ", style: TextStyle(color: Colors.grey)),
                TextSpan(text: "31"),
              ],
            ),
            maxLines: 1,
            style: TextStyle(fontSize: 15.0),
          ),
          //
          VerticalSpace(height: App.height * 0.03),
          //
          AutoSizeText(
            "Get Smartlets certificate by completing the entire course.",
            style: TextStyle(fontSize: 15.0),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
