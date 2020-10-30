part of 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';

class TabbedWidget extends StatefulWidget {
  @override
  _TabbedWidgetState createState() => _TabbedWidgetState();
}

class _TabbedWidgetState extends State<TabbedWidget> with SingleTickerProviderStateMixin {
  static const _tabBarItems = [
    LessonsTabWidget.name,
    AboutTabWidget.name,
    DiscussionTabWidget.name,
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBarItems.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, App.height * 0.055),
        child: TabBar(
          controller: _tabController,
          labelColor: Helpers.optionOf(Colors.black87, Colors.white, context: context),
          isScrollable: false,
          indicatorColor: AppColors.accentColor.shade300,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
          unselectedLabelColor: Colors.grey,
          indicatorPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: -10.0),
          tabs: _tabBarItems
              .map<Widget>(
                (item) => Container(
                  height: double.infinity,
                  child: Tab(text: item),
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          LessonsTabWidget(),
          AboutTabWidget(),
          DiscussionTabWidget(),
        ],
      ),
    );
  }
}
