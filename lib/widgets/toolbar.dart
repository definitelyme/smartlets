import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/utils/utils.dart';

class Toolbar extends AppBar {
  final double height;

  Toolbar({
    Key key,
    String title,
    Widget leadingIcon,
    TextStyle titleStyle,
    bool centerTitle = true,
    bool implyLeading = true,
    bool leadingCondition,
    VoidCallback leadingAction,
    double elevation = 0.0,
    double fontSize,
    double height,
    Color backgroundColor = Colors.transparent,
    List<Widget> actions = const [],
  })  : height = height,
        super(
          title: !title.isNullOrBlank
              ? AutoSizeText(
                  title,
                  style: titleStyle ?? !fontSize.isNull && fontSize >= 0.0
                      ? TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize)
                      : const TextStyle(fontWeight: FontWeight.w600),
                  wrapWords: false,
                  softWrap: false,
                  maxLines: 1,
                )
              : null,
          automaticallyImplyLeading: implyLeading,
          centerTitle: centerTitle,
          elevation: elevation,
          backgroundColor: backgroundColor,
          actions: actions,
          leading: leadingCondition ?? navigator.canPop()
              ? Tooltip(
                  message: "Back",
                  child: IconButton(
                    icon: leadingIcon ?? Icon(Icons.keyboard_backspace_rounded),
                    onPressed: leadingAction ?? navigator.pop,
                  ),
                )
              : null,
        );

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}
