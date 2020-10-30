import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';

class GamesIndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          centerTitle: true,
          automaticallyImplyLeading: true,
          title: AutoSizeText(
            "Games",
            minFontSize: 20.0,
            style: TextStyle(color: Helpers.computeLuminance(Theme.of(context).accentColor), fontSize: 25.0),
          ),
          toolbarHeight: App.height * 0.07,
          backgroundColor: Theme.of(context).accentColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        //
        SliverList(
          delegate: SliverChildListDelegate(
            [
              //
            ],
          ),
        ),
      ],
    );
  }
}
