part of 'package:smartlets/features/student/presentation/pages/home/home_index_page.dart';

class HomeCategoryWidget extends StatelessWidget {
  final CourseCategory category;

  const HomeCategoryWidget({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: category.id.value,
      child: Card(
        color: Colors.transparent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: App.width * 0.41,
            maxHeight: App.height * 0.25,
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // TODO: Do not return null for colors failure
                colors: category.gradient.value.fold((f) => null, (r) => r.asList()),
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [0.4, 1],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Material(
              clipBehavior: Clip.hardEdge,
              type: MaterialType.transparency,
              color: Colors.transparent,
              child: InkWell(
                onTap: () => inner(context).pushCategoryDetailPage(category: category),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          category.icon.fullPath,
                          color: Colors.white.withOpacity(0.13),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: AutoSizeText(
                                category.title.value.fold((l) => "", (r) => r),
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
                                minFontSize: 17,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
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
