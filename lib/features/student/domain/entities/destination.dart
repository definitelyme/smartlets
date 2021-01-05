import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/student/presentation/screens/exports.dart';
import 'package:smartlets/utils/smartlets_icons.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class StudentDestination<E> {
  final GlobalKey<NavigatorState> navigatorKey;
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;
  final Widget page;

  StudentDestination({
    @required this.title,
    @required this.selectedIcon,
    @required this.navigatorKey,
    @required this.page,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<StudentDestination<Widget Function(BuildContext)>> destinations =
      <StudentDestination<Widget Function(BuildContext)>>[
    StudentDestination<Widget Function(BuildContext)>(
      title: "Home",
      selectedIcon: (_) => Icon(
        Smartlets.home_filled,
        color: Theme.of(_).accentColor,
        semanticLabel: "Home",
      ),
      unSelectedIcon: (_) => Icon(
        Smartlets.home_outlined,
        color: Theme.of(_).accentColor,
        semanticLabel: "Home",
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentHomeScreen(),
    ),
    StudentDestination<Widget Function(BuildContext)>(
      title: "Courses",
      selectedIcon: (_) => Icon(
        Smartlets.book_filled,
        color: Theme.of(_).accentColor,
        semanticLabel: "Courses",
      ),
      unSelectedIcon: (_) => Icon(
        Smartlets.book_outlined,
        color: Theme.of(_).accentColor,
        semanticLabel: "Courses",
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentCoursesScreen(),
    ),
    StudentDestination<Widget Function(BuildContext)>(
      title: "Games",
      selectedIcon: (_) => Icon(
        Smartlets.game_pad_filled,
        color: Theme.of(_).accentColor,
        semanticLabel: "Games",
      ),
      unSelectedIcon: (_) => Icon(
        Smartlets.game_pad_outlined,
        color: Theme.of(_).accentColor,
        semanticLabel: "Games",
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: GamesScreen(),
    ),
    StudentDestination<Widget Function(BuildContext)>(
      title: "Profile",
      selectedIcon: (context) => BlocBuilder<StudentAuthCubit, StudentAuthState>(
        // buildWhen: (p, c) => c.guardian?.photoURL != null && c.guardian.photoURL.isNotEmpty,
        builder: (context, _) => CachedNetworkImage(
          fit: BoxFit.cover,
          placeholderFadeInDuration: Duration(milliseconds: 300),
          imageUrl: context.watch<StudentAuthCubit>().state.student?.photoURL != null &&
                  !context.watch<StudentAuthCubit>().state.student.photoURL.isBlank
              ? context.watch<StudentAuthCubit>().state.student?.photoURL
              : AppAssets.onlineAnonymous,
          imageBuilder: (context, provider) => CircleAvatar(
            backgroundImage: provider,
            backgroundColor: Theme.of(context).accentColor,
            radius: 15.0,
          ),
          placeholder: (_, url) => Center(
            child: CircularProgressBar.adaptive(
              width: App.width * 0.06,
              height: App.width * 0.06,
              strokeWidth: 2.5,
            ),
          ),
          errorWidget: (context, url, error) => CircleAvatar(
            backgroundImage: AssetImage(AppAssets.anonymous),
            backgroundColor: Theme.of(context).accentColor,
            radius: 15.0,
          ),
        ),
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: StudentProfileScreen(),
    ),
  ].toList();
}
