import 'package:auto_route/auto_route_annotations.dart';
import 'package:smartlets/features/_404.dart';
import 'package:smartlets/features/auth/presentation/pages/auth_screens.dart';
import 'package:smartlets/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:smartlets/features/on_boarding/presentation/splash_screen.dart';
import 'package:smartlets/features/parent/presentation/pages/pages.dart';
import 'package:smartlets/features/parent/presentation/screens/export.dart';
import 'package:smartlets/features/student/presentation/pages/student_pages.dart';
import 'package:smartlets/features/student/presentation/screens/course_details/course_detail_index_page.dart';
import 'package:smartlets/features/student/presentation/screens/exports.dart';
import 'package:smartlets/widgets/edit_image_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashScreen, initial: true, maintainState: true),
    AdaptiveRoute(page: OnBoardingScreen, maintainState: true),

    /// AUTH SCREENS START ///
    AdaptiveRoute(path: "/login", page: LoginScreen, cupertinoPageTitle: "Login", maintainState: true),
    AdaptiveRoute(path: "/register", page: SignupScreen, cupertinoPageTitle: "Sign Up", maintainState: true),
    AdaptiveRoute(
        path: "/forgot-password", page: ForgotPasswordScreen, cupertinoPageTitle: "Forgot Password", maintainState: true),
    AdaptiveRoute(page: EmailSentScreen, cupertinoPageTitle: "Success", maintainState: true, fullscreenDialog: true),

    /// AUTH SCREENS END ///
    //
    /// PARENT SCREENS START ////////
    AdaptiveRoute(page: ParentRootScreen, maintainState: true),
    AdaptiveRoute(path: "/payment", page: PaymentScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        cupertinoPageTitle: "Upgrade to PRO",
        page: PaymentIndexPage,
        maintainState: true,
        initial: true,
      ),
      AdaptiveRoute(
        path: "/upgrade",
        cupertinoPageTitle: "Payment Method",
        page: PaymentMethodPage,
        maintainState: true,
        fullscreenDialog: true,
      ),
    ]),
    //
    AdaptiveRoute(path: "/child", page: ChildScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: ChildIndexPage,
        cupertinoPageTitle: "Your Kids",
        maintainState: true,
        initial: true,
      ),
      AdaptiveRoute(
        path: "/add-child-page",
        page: CreateChildAccountPage,
        cupertinoPageTitle: "Create Child Account",
        maintainState: true,
        fullscreenDialog: true,
      ),
      AdaptiveRoute(
        path: "/show",
        page: ShowChildPage,
        maintainState: true,
      ),
      AdaptiveRoute(
        path: "/child-courses",
        page: ChildCoursesPage,
        cupertinoPageTitle: "Courses",
        maintainState: true,
      ),
      AdaptiveRoute(
        path: "/child-rewards",
        page: ChildAwardsPage,
        cupertinoPageTitle: "Rewards",
        maintainState: true,
      ),
      AdaptiveRoute(
        path: "/child-projects",
        page: ChildProjectsPage,
        cupertinoPageTitle: "Projects",
        maintainState: true,
      ),
      AdaptiveRoute(
        path: "/child-projects-details",
        page: ChildProjectDetailsPage,
        maintainState: true,
      ),
    ]),
    AdaptiveRoute(path: "/notifications", page: NotificationScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: NotificationIndexPage,
        cupertinoPageTitle: "Notifications",
        maintainState: true,
        initial: true,
      ),
    ]),
    AdaptiveRoute(path: "/profile", page: ProfileScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: ParentProfileIndex,
        cupertinoPageTitle: "Your Profile",
        maintainState: true,
        initial: true,
      ),
      AdaptiveRoute(
        path: "/update",
        page: UpdateParentProfilePage,
        cupertinoPageTitle: "Update Profile",
        maintainState: true,
      ),
    ]),

    /// PARENT SCREENS END ////////
    ///
    ///
    /// STUDENT SCREENS START ////////
    AdaptiveRoute(path: "/students", page: StudentRootScreen, maintainState: true),
    AdaptiveRoute(path: "/students/home", page: StudentHomeScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: StudentHomeIndexPage,
        cupertinoPageTitle: "Home",
        maintainState: true,
      ),
      AdaptiveRoute(
        path: "/category_detail",
        page: CategoryDetailPage,
        cupertinoPageTitle: "Category Detail",
        maintainState: true,
      ),
    ]),
    AdaptiveRoute(path: "/students/courses", page: StudentCoursesScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: CoursesIndexPage,
        cupertinoPageTitle: "My Course",
        maintainState: true,
      ),
    ]),
    AdaptiveRoute(path: "/students/games", page: GamesScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: GamesIndexPage,
        cupertinoPageTitle: "Games",
        maintainState: true,
      ),
    ]),
    AdaptiveRoute(path: "/students/profile", page: StudentProfileScreen, maintainState: true, children: [
      AdaptiveRoute(
        path: "/",
        page: StudentProfileIndexPage,
        cupertinoPageTitle: "Profile",
        maintainState: true,
      ),
      AdaptiveRoute(
        path: "/profile/update",
        page: StudentProfileUpdatePage,
        cupertinoPageTitle: "Update Profile",
        maintainState: true,
      ),
    ]),

    /// STUDENT SCREENS END ////////
    //
    AdaptiveRoute(path: "/students/course-details", page: CourseDetailScreen, maintainState: true, children: [
      AdaptiveRoute(
        initial: true,
        page: CourseDetailIndexPage,
        maintainState: true,
      ),
    ]),
    //
    AdaptiveRoute(
        path: "/edit-photo",
        cupertinoPageTitle: "Edit Photo",
        page: EditImageScreen,
        maintainState: true,
        fullscreenDialog: true,
    ),
    //
    AdaptiveRoute(path: "*", cupertinoPageTitle: "Error 404", page: UnknownRoute, maintainState: true),
  ],
  generateNavigationHelperExtension: true,
  preferRelativeImports: false,
)
class $Router {}
