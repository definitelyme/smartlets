import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/manager/blocs.dart';
import 'package:smartlets/utils/utils.dart';

class ParentBottomNav extends StatelessWidget {
  final List<ParentDestination<Widget Function(BuildContext)>> destinations;

  const ParentBottomNav(this.destinations, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParentNavCubit, int>(
      builder: (context, state) => CurvedNavigationBar(
        index: state,
        height: kBottomNavigationBarHeight,
        items: destinations
            .map(
              (dest) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  dest.selectedIcon(context),
                  //
                  Visibility(
                    visible: false,
                    child: Text(dest.title),
                  ),
                ],
              ),
            )
            .toList(),
        color: Theme.of(context).primaryColor,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          if (state != index)
            context.read<ParentNavCubit>().indexChanged(index);
          // If the user is re-selecting the tab, the common
          // behavior is to empty the stack.
          else
            inner(context).popUntil((route) => route.isFirst);
        },
      ),
    );
  }
}
