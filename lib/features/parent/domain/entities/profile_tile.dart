import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/theme/theme.dart';
import 'package:smartlets/utils/utils.dart';

class ProfileTile {
  final String title;
  final String subtitle;
  final Color leadingColor;
  final Widget leading;
  final Widget trailing;
  final WidgetBuilder builder;
  final void Function(BuildContext) onPressed;

  ProfileTile({
    @required this.title,
    this.subtitle,
    @required this.leading,
    this.trailing,
    Color color,
    this.onPressed,
    this.builder,
  }) : leadingColor = color ?? AppColors.accentColor;

  static List<ProfileTile> get list => [
        ProfileTile(
          title: "Account",
          leading: AppAssets.user,
          subtitle: "Details & Password",
          onPressed: (context) => getIt<AuthFacade>().currentUser?.fold(
                () => navigator.pushAndRemoveUntil(Routes.onBoardingScreen, (route) => false),
                (_) => BlocProvider.of<OnBoardingCubit>(App.context).state.role?.fold(
                      parent: () => inner(context).pushUpdateParentProfilePage(
                        user: getIt<AuthFacade>().currentUser.getOrElse(() => null),
                      ),
                      student: () => inner(context).pushStudentProfileUpdatePage(
                        user: getIt<AuthFacade>().currentUser.getOrElse(() => null),
                      ),
                    ),
              ),
        ),
        //
        ProfileTile(
          title: "Notifications",
          leading: AppAssets.notification,
          builder: (context) => SwitchListTile.adaptive(
            secondary: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(color: AppColors.fromHex("#12FF46"), borderRadius: BorderRadius.circular(8.0)),
              child: AppAssets.notification,
            ),
            title: Text("Notifications", style: const TextStyle(fontSize: 16.5)),
            subtitle: Text("On", style: const TextStyle(fontSize: 13.0)),
            dense: true,
            value: true,
            activeColor: App.theme.accentColor,
            onChanged: (shouldNotify) {},
          ),
        ),
        //
        ProfileTile(
          title: "Subscription",
          leading: AppAssets.creditCard,
          subtitle: "Manage Membership",
          color: AppColors.fromHex("#FF5994"),
          onPressed: (context) {},
        ),
        ProfileTile(
          title: "Dark Mode",
          leading: AppAssets.creditCard,
          builder: (context) => BlocBuilder<ThemeCubit, AppTheme>(
            builder: (context, state) => SwitchListTile.adaptive(
              secondary: Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                child:
                    Helpers.optionOf(AppAssets.night, RotatedBox(quarterTurns: 90, child: Icon(Icons.wb_incandescent_rounded))),
              ),
              title: Text("${Helpers.optionOf('Dark mode', 'Light mode')}", style: const TextStyle(fontSize: 16.5)),
              subtitle: Text("Toggle ${Helpers.optionOf('dark', 'light')} mode", style: const TextStyle(fontSize: 13.0)),
              dense: true,
              value: MediaQuery.of(context).platformBrightness != state.themeData().brightness,
              activeColor: Theme.of(context).accentColor,
              onChanged: (_) => BlocProvider.of<ThemeCubit>(context).toggleTheme(),
            ),
          ),
        ),
        ProfileTile(
          title: "Help",
          leading: AppAssets.info,
          subtitle: "Privacy Policy, About",
          color: AppColors.fromHex("#FECD00"),
          onPressed: (context) {},
        ),
        ProfileTile(
          title: "Sign out",
          leading: AppAssets.exit,
          subtitle: "Signout from ${AppStrings.appName.toLowerCase()} platform",
          color: AppColors.fromHex("#5FA2FF"),
          onPressed: (_) async {
            // Detach all firestore listeners [Essential]
            await BlocProvider.of<OnBoardingCubit>(App.context).state.role?.fold(
                  parent: () async => await BlocProvider.of<GuardianAuthCubit>(_)?.detachListeners(),
                  student: () async => await BlocProvider.of<StudentAuthCubit>(_)?.detachListeners(),
                );
            // Signout user
            await BlocProvider.of<AuthWatcherCubit>(_).signOut;
            // Navigate to Home screen
            if (App.currentRoute != Routes.onBoardingScreen)
              navigator.pushAndRemoveUntil(Routes.onBoardingScreen, (route) => false);
          },
        ),
      ];
}
