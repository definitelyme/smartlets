import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/features/parent/presentation/widgets/parent_widgets.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';

class ParentRootScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _ParentRootScreenState createState() => _ParentRootScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ParentNavCubit>()),
        BlocProvider(create: (_) => getIt<GuardianAuthCubit>()..read),
      ],
      child: this,
    );
  }
}

class _ParentRootScreenState extends State<ParentRootScreen> with AutomaticKeepAliveClientMixin {
  final List<ParentDestination<Widget Function(BuildContext)>> destinations = ParentDestination.destinations;
  DateTime _buttonPressedTime;

  Future<bool> willPop() {
    DateTime now = DateTime.now();
    if (_buttonPressedTime == null || now.difference(_buttonPressedTime) > Helpers.willPopTimeout) {
      _buttonPressedTime = now;
      Fluttertoast.showToast(
        msg: "Tap again to exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return Future.value(false);
    } else {
      Fluttertoast.cancel();
      return Future.value(true);
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<ParentNavCubit, int>(builder: (context, index) {
      return WillPopScope(
        onWillPop: () async {
          // if (App.currentRoute == Routes.parentRootScreen && index == 0)
          //   return await willPop();
          // else if (App.currentRoute == Routes.parentRootScreen) {
          //   context.bloc<ParentNavCubit>().indexChanged(0);
          //   return false;
          // }

          return await willPop();
        },
        child: Scaffold(
          body: IndexedStack(
            index: index,
            children: destinations.map((d) => d.page).toList(),
          ),
          bottomNavigationBar: ParentBottomNav(destinations),
        ),
      );
    });
  }
}
