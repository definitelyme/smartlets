import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class ChildrenListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
      body: CustomScrollView(
        shrinkWrap: true,
        physics: Helpers.physics,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                  child: Column(
                    children: [
                      const Center(
                        child: AutoSizeText(
                          "Your Kids",
                          maxLines: 1,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.02),
                      //
                      const AutoSizeText(
                        "Tap your child’s name to view progress.",
                        maxLines: 1,
                        minFontSize: 15.0,
                        softWrap: true,
                        wrapWords: true,
                        textAlign: TextAlign.center,
                      ),
                      //
                      VerticalSpace(height: App.height * 0.05),
                      //
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Theme.of(context).accentColor, width: 1.6),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(8.0),
                          child: ListTile(
                            onTap: () {},
                            leading: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 45,
                              width: 45,
                              child: Transform.rotate(
                                angle: math.pi / 4,
                                child: Icon(
                                  Icons.navigation_sharp,
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                ),
                              ),
                            ),
                            title: AutoSizeText(
                              "Martina",
                              minFontSize: 17.0,
                              style: TextStyle(
                                color: Helpers.optionOf(Colors.black, Colors.white, context: context),
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: App.width * 0.03, vertical: App.width * 0.015),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                            dense: false,
                            selected: true,
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.03),
                      //
                      Hero(
                        tag: "3",
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(8.0),
                            child: ListTile(
                              onTap: () => inner(context).pushShowChildPage(),
                              leading: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 45,
                                width: 45,
                                child: Transform.rotate(
                                  angle: math.pi / 4,
                                  child: Icon(
                                    Icons.navigation_sharp,
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                  ),
                                ),
                              ),
                              title: AutoSizeText(
                                "Charles",
                                minFontSize: 17.0,
                                style: TextStyle(
                                  color: Helpers.optionOf(Colors.black, Colors.white, context: context),
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: App.width * 0.03, vertical: App.width * 0.015),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                              dense: false,
                              selected: true,
                            ),
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.height * 0.04),
                      //
                      MkButton(
                        text: "Add Another Child",
                        minFontSize: 17.0,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //
          SliverToBoxAdapter(
            child: Column(
              children: [
                VerticalSpace(height: App.height * 0.15),
                //
                AppAssets.friendsOnline,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
