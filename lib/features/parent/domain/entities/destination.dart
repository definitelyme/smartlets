import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/parent/presentation/screens/export.dart';
import 'package:smartlets/utils/smartlets_icons.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ParentDestination<E> {
  final GlobalKey<NavigatorState> navigatorKey;
  final String title;
  final E selectedIcon;
  final E unSelectedIcon;
  final Widget page;

  ParentDestination({
    @required this.title,
    @required this.selectedIcon,
    @required this.navigatorKey,
    @required this.page,
    E unSelectedIcon,
  }) : unSelectedIcon = unSelectedIcon ?? selectedIcon;

  static final List<ParentDestination<Widget Function(BuildContext)>> destinations =
      <ParentDestination<Widget Function(BuildContext)>>[
    ParentDestination<Widget Function(BuildContext)>(
      title: "Payment",
      selectedIcon: (_) => Icon(
        Smartlets.pay_filled,
        color: Theme.of(_).accentColor,
        semanticLabel: "Payment",
      ),
      unSelectedIcon: (_) => Icon(
        Smartlets.pay_outlined,
        color: Theme.of(_).accentColor,
        semanticLabel: "Payment",
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: PaymentScreen(),
    ),
    ParentDestination<Widget Function(BuildContext)>(
      title: "Kids",
      selectedIcon: (_) => Icon(
        Smartlets.group_users_filled,
        color: Theme.of(_).accentColor,
        semanticLabel: "Kids",
      ),
      unSelectedIcon: (_) => Icon(
        Smartlets.group_users_outlined,
        color: Theme.of(_).accentColor,
        semanticLabel: "Kids",
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: ChildScreen(),
    ),
    ParentDestination<Widget Function(BuildContext)>(
      title: "Notifications",
      selectedIcon: (_) => Icon(
        Smartlets.notification,
        color: Theme.of(_).accentColor,
        semanticLabel: "Notifications",
      ),
      unSelectedIcon: (_) => Icon(
        Smartlets.bell_outlined,
        color: Theme.of(_).accentColor,
        semanticLabel: "Notifications",
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      page: NotificationScreen(),
    ),
    ParentDestination<Widget Function(BuildContext)>(
      title: "Profile",
      selectedIcon: (context) => BlocBuilder<GuardianAuthCubit, GuardianAuthState>(
        // buildWhen: (p, c) => c.guardian?.photoURL != null && c.guardian.photoURL.isNotEmpty,
        builder: (context, _) => CachedNetworkImage(
          fit: BoxFit.cover,
          placeholderFadeInDuration: Duration(milliseconds: 300),
          imageUrl: context.watch<GuardianAuthCubit>().state.guardian?.photoURL != null &&
                  !context.watch<GuardianAuthCubit>().state.guardian.photoURL.isBlank
              ? context.watch<GuardianAuthCubit>().state.guardian?.photoURL
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
      page: ProfileScreen(),
    ),
  ].toList();
}
