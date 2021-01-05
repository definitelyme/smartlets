// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smartlets/features/_404.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/pages/auth_screens.dart';
import 'package:smartlets/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:smartlets/features/on_boarding/presentation/splash_screen.dart';
import 'package:smartlets/features/parent/presentation/pages/pages.dart';
import 'package:smartlets/features/parent/presentation/screens/export.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/presentation/pages/student_pages.dart';
import 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';
import 'package:smartlets/features/student/presentation/screens/exports.dart';
import 'package:smartlets/widgets/edit_image_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String loginScreen = '/login';
  static const String signupScreen = '/register';
  static const String forgotPasswordScreen = '/forgot-password';
  static const String emailSentScreen = '/email-sent-screen';
  static const String parentRootScreen = '/parent-root-screen';
  static const String paymentScreen = '/payment';
  static const String childScreen = '/child';
  static const String notificationScreen = '/notifications';
  static const String profileScreen = '/profile';
  static const String studentRootScreen = '/students';
  static const String studentHomeScreen = '/students/home';
  static const String studentCoursesScreen = '/students/courses';
  static const String gamesScreen = '/students/games';
  static const String studentProfileScreen = '/students/profile';
  static const String courseDetailScreen = '/students/course-details';
  static const String editImageScreen = '/edit-photo';
  static const String unknownRoute = '*';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    loginScreen,
    signupScreen,
    forgotPasswordScreen,
    emailSentScreen,
    parentRootScreen,
    paymentScreen,
    childScreen,
    notificationScreen,
    profileScreen,
    studentRootScreen,
    studentHomeScreen,
    studentCoursesScreen,
    gamesScreen,
    studentProfileScreen,
    courseDetailScreen,
    editImageScreen,
    unknownRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.signupScreen, page: SignupScreen),
    RouteDef(Routes.forgotPasswordScreen, page: ForgotPasswordScreen),
    RouteDef(Routes.emailSentScreen, page: EmailSentScreen),
    RouteDef(Routes.parentRootScreen, page: ParentRootScreen),
    RouteDef(
      Routes.paymentScreen,
      page: PaymentScreen,
      generator: PaymentScreenRouter(),
    ),
    RouteDef(
      Routes.childScreen,
      page: ChildScreen,
      generator: ChildScreenRouter(),
    ),
    RouteDef(
      Routes.notificationScreen,
      page: NotificationScreen,
      generator: NotificationScreenRouter(),
    ),
    RouteDef(
      Routes.profileScreen,
      page: ProfileScreen,
      generator: ProfileScreenRouter(),
    ),
    RouteDef(Routes.studentRootScreen, page: StudentRootScreen),
    RouteDef(
      Routes.studentHomeScreen,
      page: StudentHomeScreen,
      generator: StudentHomeScreenRouter(),
    ),
    RouteDef(
      Routes.studentCoursesScreen,
      page: StudentCoursesScreen,
      generator: StudentCoursesScreenRouter(),
    ),
    RouteDef(
      Routes.gamesScreen,
      page: GamesScreen,
      generator: GamesScreenRouter(),
    ),
    RouteDef(
      Routes.studentProfileScreen,
      page: StudentProfileScreen,
      generator: StudentProfileScreenRouter(),
    ),
    RouteDef(
      Routes.courseDetailScreen,
      page: CourseDetailScreen,
      generator: CourseDetailScreenRouter(),
    ),
    RouteDef(Routes.editImageScreen, page: EditImageScreen),
    RouteDef(Routes.unknownRoute, page: UnknownRoute),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
        maintainState: true,
      );
    },
    OnBoardingScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
        maintainState: true,
      );
    },
    LoginScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Login',
        maintainState: true,
      );
    },
    SignupScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SignupScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Sign Up',
        maintainState: true,
      );
    },
    ForgotPasswordScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ForgotPasswordScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Forgot Password',
        maintainState: true,
      );
    },
    EmailSentScreen: (data) {
      final args = data.getArgs<EmailSentScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EmailSentScreen(
          key: args.key,
          title: args.title,
          description: args.description,
          content: args.content,
          email: args.email,
          visual: args.visual,
          buttonText: args.buttonText,
          showResendButton: args.showResendButton,
          onTap: args.onTap,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Success',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    ParentRootScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ParentRootScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    PaymentScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaymentScreen(),
        settings: data,
        maintainState: true,
      );
    },
    ChildScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildScreen(),
        settings: data,
        maintainState: true,
      );
    },
    NotificationScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NotificationScreen(),
        settings: data,
        maintainState: true,
      );
    },
    ProfileScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
        maintainState: true,
      );
    },
    StudentRootScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentRootScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    StudentHomeScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentHomeScreen(),
        settings: data,
        maintainState: true,
      );
    },
    StudentCoursesScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentCoursesScreen(),
        settings: data,
        maintainState: true,
      );
    },
    GamesScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GamesScreen(),
        settings: data,
        maintainState: true,
      );
    },
    StudentProfileScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentProfileScreen(),
        settings: data,
        maintainState: true,
      );
    },
    CourseDetailScreen: (data) {
      final args = data.getArgs<CourseDetailScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CourseDetailScreen(
          key: args.key,
          course: args.course,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    EditImageScreen: (data) {
      final args = data.getArgs<EditImageScreenArguments>(
        orElse: () => EditImageScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EditImageScreen(
          key: args.key,
          file: args.file,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Edit Photo',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    UnknownRoute: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UnknownRoute(),
        settings: data,
        cupertinoTitle: 'Error 404',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushOnBoardingScreen() =>
      push<dynamic>(Routes.onBoardingScreen);

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushSignupScreen() => push<dynamic>(Routes.signupScreen);

  Future<dynamic> pushForgotPasswordScreen() =>
      push<dynamic>(Routes.forgotPasswordScreen);

  Future<dynamic> pushEmailSentScreen({
    Key key,
    @required String title,
    String description,
    Widget content,
    @required String email,
    Widget visual,
    @required String buttonText,
    bool showResendButton = false,
    void Function() onTap,
  }) =>
      push<dynamic>(
        Routes.emailSentScreen,
        arguments: EmailSentScreenArguments(
            key: key,
            title: title,
            description: description,
            content: content,
            email: email,
            visual: visual,
            buttonText: buttonText,
            showResendButton: showResendButton,
            onTap: onTap),
      );

  Future<dynamic> pushParentRootScreen() =>
      push<dynamic>(Routes.parentRootScreen);

  Future<dynamic> pushPaymentScreen() => push<dynamic>(Routes.paymentScreen);

  Future<dynamic> pushChildScreen() => push<dynamic>(Routes.childScreen);

  Future<dynamic> pushNotificationScreen() =>
      push<dynamic>(Routes.notificationScreen);

  Future<dynamic> pushProfileScreen() => push<dynamic>(Routes.profileScreen);

  Future<dynamic> pushStudentRootScreen() =>
      push<dynamic>(Routes.studentRootScreen);

  Future<dynamic> pushStudentHomeScreen() =>
      push<dynamic>(Routes.studentHomeScreen);

  Future<dynamic> pushStudentCoursesScreen() =>
      push<dynamic>(Routes.studentCoursesScreen);

  Future<dynamic> pushGamesScreen() => push<dynamic>(Routes.gamesScreen);

  Future<dynamic> pushStudentProfileScreen() =>
      push<dynamic>(Routes.studentProfileScreen);

  Future<dynamic> pushCourseDetailScreen({
    Key key,
    @required Course course,
  }) =>
      push<dynamic>(
        Routes.courseDetailScreen,
        arguments: CourseDetailScreenArguments(key: key, course: course),
      );

  Future<dynamic> pushEditImageScreen({
    Key key,
    File file,
  }) =>
      push<dynamic>(
        Routes.editImageScreen,
        arguments: EditImageScreenArguments(key: key, file: file),
      );

  Future<dynamic> pushUnknownRoute() => push<dynamic>(Routes.unknownRoute);
}

class PaymentScreenRoutes {
  static const String paymentIndexPage = '/';
  static const String paymentMethodPage = '/upgrade';
  static const all = <String>{
    paymentIndexPage,
    paymentMethodPage,
  };
}

class PaymentScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(PaymentScreenRoutes.paymentIndexPage, page: PaymentIndexPage),
    RouteDef(PaymentScreenRoutes.paymentMethodPage, page: PaymentMethodPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    PaymentIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaymentIndexPage().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Upgrade to PRO',
        maintainState: true,
      );
    },
    PaymentMethodPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PaymentMethodPage().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Payment Method',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension PaymentScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushPaymentIndexPage() =>
      push<dynamic>(PaymentScreenRoutes.paymentIndexPage);

  Future<dynamic> pushPaymentMethodPage() =>
      push<dynamic>(PaymentScreenRoutes.paymentMethodPage);
}

class ChildScreenRoutes {
  static const String childIndexPage = '/';
  static const String createChildAccountPage = '/add-child-page';
  static const String showChildPage = '/show';
  static const String childCoursesPage = '/child-courses';
  static const String childAwardsPage = '/child-rewards';
  static const String childProjectsPage = '/child-projects';
  static const String childProjectDetailsPage = '/child-projects-details';
  static const all = <String>{
    childIndexPage,
    createChildAccountPage,
    showChildPage,
    childCoursesPage,
    childAwardsPage,
    childProjectsPage,
    childProjectDetailsPage,
  };
}

class ChildScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ChildScreenRoutes.childIndexPage, page: ChildIndexPage),
    RouteDef(ChildScreenRoutes.createChildAccountPage,
        page: CreateChildAccountPage),
    RouteDef(ChildScreenRoutes.showChildPage, page: ShowChildPage),
    RouteDef(ChildScreenRoutes.childCoursesPage, page: ChildCoursesPage),
    RouteDef(ChildScreenRoutes.childAwardsPage, page: ChildAwardsPage),
    RouteDef(ChildScreenRoutes.childProjectsPage, page: ChildProjectsPage),
    RouteDef(ChildScreenRoutes.childProjectDetailsPage,
        page: ChildProjectDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ChildIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildIndexPage().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Your Kids',
        maintainState: true,
      );
    },
    CreateChildAccountPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CreateChildAccountPage().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Create Child Account',
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    ShowChildPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ShowChildPage().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    ChildCoursesPage: (data) {
      final args = data.getArgs<ChildCoursesPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildCoursesPage(
          args.tag,
          key: args.key,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Courses',
        maintainState: true,
      );
    },
    ChildAwardsPage: (data) {
      final args = data.getArgs<ChildAwardsPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildAwardsPage(
          args.tag,
          key: args.key,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Rewards',
        maintainState: true,
      );
    },
    ChildProjectsPage: (data) {
      final args = data.getArgs<ChildProjectsPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildProjectsPage(
          args.tag,
          key: args.key,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Projects',
        maintainState: true,
      );
    },
    ChildProjectDetailsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChildProjectDetailsPage().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension ChildScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushChildIndexPage() =>
      push<dynamic>(ChildScreenRoutes.childIndexPage);

  Future<dynamic> pushCreateChildAccountPage() =>
      push<dynamic>(ChildScreenRoutes.createChildAccountPage);

  Future<dynamic> pushShowChildPage() =>
      push<dynamic>(ChildScreenRoutes.showChildPage);

  Future<dynamic> pushChildCoursesPage({
    @required String tag,
    Key key,
  }) =>
      push<dynamic>(
        ChildScreenRoutes.childCoursesPage,
        arguments: ChildCoursesPageArguments(tag: tag, key: key),
      );

  Future<dynamic> pushChildAwardsPage({
    @required String tag,
    Key key,
  }) =>
      push<dynamic>(
        ChildScreenRoutes.childAwardsPage,
        arguments: ChildAwardsPageArguments(tag: tag, key: key),
      );

  Future<dynamic> pushChildProjectsPage({
    @required String tag,
    Key key,
  }) =>
      push<dynamic>(
        ChildScreenRoutes.childProjectsPage,
        arguments: ChildProjectsPageArguments(tag: tag, key: key),
      );

  Future<dynamic> pushChildProjectDetailsPage() =>
      push<dynamic>(ChildScreenRoutes.childProjectDetailsPage);
}

class NotificationScreenRoutes {
  static const String notificationIndexPage = '/';
  static const all = <String>{
    notificationIndexPage,
  };
}

class NotificationScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(NotificationScreenRoutes.notificationIndexPage,
        page: NotificationIndexPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    NotificationIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NotificationIndexPage(),
        settings: data,
        cupertinoTitle: 'Notifications',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension NotificationScreenRouterExtendedNavigatorStateX
    on ExtendedNavigatorState {
  Future<dynamic> pushNotificationIndexPage() =>
      push<dynamic>(NotificationScreenRoutes.notificationIndexPage);
}

class ProfileScreenRoutes {
  static const String parentProfileIndex = '/';
  static const String updateParentProfilePage = '/update';
  static const all = <String>{
    parentProfileIndex,
    updateParentProfilePage,
  };
}

class ProfileScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ProfileScreenRoutes.parentProfileIndex, page: ParentProfileIndex),
    RouteDef(ProfileScreenRoutes.updateParentProfilePage,
        page: UpdateParentProfilePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ParentProfileIndex: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ParentProfileIndex().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Your Profile',
        maintainState: true,
      );
    },
    UpdateParentProfilePage: (data) {
      final args =
          data.getArgs<UpdateParentProfilePageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UpdateParentProfilePage(
          args.user,
          key: args.key,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Update Profile',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension ProfileScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushParentProfileIndex() =>
      push<dynamic>(ProfileScreenRoutes.parentProfileIndex);

  Future<dynamic> pushUpdateParentProfilePage({
    @required User user,
    Key key,
  }) =>
      push<dynamic>(
        ProfileScreenRoutes.updateParentProfilePage,
        arguments: UpdateParentProfilePageArguments(user: user, key: key),
      );
}

class StudentHomeScreenRoutes {
  static const String studentHomeIndexPage = '/';
  static const String categoryDetailPage = '/category_detail';
  static const all = <String>{
    studentHomeIndexPage,
    categoryDetailPage,
  };
}

class StudentHomeScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(StudentHomeScreenRoutes.studentHomeIndexPage,
        page: StudentHomeIndexPage),
    RouteDef(StudentHomeScreenRoutes.categoryDetailPage,
        page: CategoryDetailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StudentHomeIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentHomeIndexPage(),
        settings: data,
        cupertinoTitle: 'Home',
        maintainState: true,
      );
    },
    CategoryDetailPage: (data) {
      final args = data.getArgs<CategoryDetailPageArguments>(
        orElse: () => CategoryDetailPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CategoryDetailPage(
          key: args.key,
          category: args.category,
        ),
        settings: data,
        cupertinoTitle: 'Category Detail',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension StudentHomeScreenRouterExtendedNavigatorStateX
    on ExtendedNavigatorState {
  Future<dynamic> pushStudentHomeIndexPage() =>
      push<dynamic>(StudentHomeScreenRoutes.studentHomeIndexPage);

  Future<dynamic> pushCategoryDetailPage({
    Key key,
    CourseCategory category,
  }) =>
      push<dynamic>(
        StudentHomeScreenRoutes.categoryDetailPage,
        arguments: CategoryDetailPageArguments(key: key, category: category),
      );
}

class StudentCoursesScreenRoutes {
  static const String coursesIndexPage = '/';
  static const all = <String>{
    coursesIndexPage,
  };
}

class StudentCoursesScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(StudentCoursesScreenRoutes.coursesIndexPage,
        page: CoursesIndexPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CoursesIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CoursesIndexPage(),
        settings: data,
        cupertinoTitle: 'My Course',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension StudentCoursesScreenRouterExtendedNavigatorStateX
    on ExtendedNavigatorState {
  Future<dynamic> pushCoursesIndexPage() =>
      push<dynamic>(StudentCoursesScreenRoutes.coursesIndexPage);
}

class GamesScreenRoutes {
  static const String gamesIndexPage = '/';
  static const all = <String>{
    gamesIndexPage,
  };
}

class GamesScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(GamesScreenRoutes.gamesIndexPage, page: GamesIndexPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    GamesIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GamesIndexPage(),
        settings: data,
        cupertinoTitle: 'Games',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension GamesScreenRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushGamesIndexPage() =>
      push<dynamic>(GamesScreenRoutes.gamesIndexPage);
}

class StudentProfileScreenRoutes {
  static const String studentProfileIndexPage = '/';
  static const String studentProfileUpdatePage = '/profile/update';
  static const all = <String>{
    studentProfileIndexPage,
    studentProfileUpdatePage,
  };
}

class StudentProfileScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(StudentProfileScreenRoutes.studentProfileIndexPage,
        page: StudentProfileIndexPage),
    RouteDef(StudentProfileScreenRoutes.studentProfileUpdatePage,
        page: StudentProfileUpdatePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StudentProfileIndexPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentProfileIndexPage().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Profile',
        maintainState: true,
      );
    },
    StudentProfileUpdatePage: (data) {
      final args =
          data.getArgs<StudentProfileUpdatePageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => StudentProfileUpdatePage(
          args.user,
          key: args.key,
        ).wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Update Profile',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension StudentProfileScreenRouterExtendedNavigatorStateX
    on ExtendedNavigatorState {
  Future<dynamic> pushStudentProfileIndexPage() =>
      push<dynamic>(StudentProfileScreenRoutes.studentProfileIndexPage);

  Future<dynamic> pushStudentProfileUpdatePage({
    @required User user,
    Key key,
  }) =>
      push<dynamic>(
        StudentProfileScreenRoutes.studentProfileUpdatePage,
        arguments: StudentProfileUpdatePageArguments(user: user, key: key),
      );
}

class CourseDetailScreenRoutes {
  static const String courseDetailIndexPage = '/';
  static const all = <String>{
    courseDetailIndexPage,
  };
}

class CourseDetailScreenRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(CourseDetailScreenRoutes.courseDetailIndexPage,
        page: CourseDetailIndexPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CourseDetailIndexPage: (data) {
      final args = data.getArgs<CourseDetailIndexPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CourseDetailIndexPage(
          key: args.key,
          course: args.course,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension CourseDetailScreenRouterExtendedNavigatorStateX
    on ExtendedNavigatorState {
  Future<dynamic> pushCourseDetailIndexPage({
    Key key,
    @required Course course,
  }) =>
      push<dynamic>(
        CourseDetailScreenRoutes.courseDetailIndexPage,
        arguments: CourseDetailIndexPageArguments(key: key, course: course),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EmailSentScreen arguments holder class
class EmailSentScreenArguments {
  final Key key;
  final String title;
  final String description;
  final Widget content;
  final String email;
  final Widget visual;
  final String buttonText;
  final bool showResendButton;
  final void Function() onTap;
  EmailSentScreenArguments(
      {this.key,
      @required this.title,
      this.description,
      this.content,
      @required this.email,
      this.visual,
      @required this.buttonText,
      this.showResendButton = false,
      this.onTap});
}

/// CourseDetailScreen arguments holder class
class CourseDetailScreenArguments {
  final Key key;
  final Course course;
  CourseDetailScreenArguments({this.key, @required this.course});
}

/// EditImageScreen arguments holder class
class EditImageScreenArguments {
  final Key key;
  final File file;
  EditImageScreenArguments({this.key, this.file});
}

/// ChildCoursesPage arguments holder class
class ChildCoursesPageArguments {
  final String tag;
  final Key key;
  ChildCoursesPageArguments({@required this.tag, this.key});
}

/// ChildAwardsPage arguments holder class
class ChildAwardsPageArguments {
  final String tag;
  final Key key;
  ChildAwardsPageArguments({@required this.tag, this.key});
}

/// ChildProjectsPage arguments holder class
class ChildProjectsPageArguments {
  final String tag;
  final Key key;
  ChildProjectsPageArguments({@required this.tag, this.key});
}

/// UpdateParentProfilePage arguments holder class
class UpdateParentProfilePageArguments {
  final User user;
  final Key key;
  UpdateParentProfilePageArguments({@required this.user, this.key});
}

/// CategoryDetailPage arguments holder class
class CategoryDetailPageArguments {
  final Key key;
  final CourseCategory category;
  CategoryDetailPageArguments({this.key, this.category});
}

/// StudentProfileUpdatePage arguments holder class
class StudentProfileUpdatePageArguments {
  final User user;
  final Key key;
  StudentProfileUpdatePageArguments({@required this.user, this.key});
}

/// CourseDetailIndexPage arguments holder class
class CourseDetailIndexPageArguments {
  final Key key;
  final Course course;
  CourseDetailIndexPageArguments({this.key, @required this.course});
}
