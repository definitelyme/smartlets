import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:smartlets/utils/colors.dart';

part 'styles-adapter.dart';

const String LIGHT_THEME_ID = "Light";
const String DARK_THEME_ID = "Dark";

class AppTheme extends HiveObject {
  final String id;
  final Brightness _brightness;
  final Brightness _accentColorBrightness;
  final Color _primaryColor;
  final Color _buttonColor;
  final Color _indicatorColor;
  final Color _primaryColorDark;
  final Color _primaryColorLight;
  final InputDecorationTheme _textFieldTheme;
  final Color _scaffoldBackgroundColor;
  final Color _toggleableActiveColor;
  final Color _accentColor;
  final Color _splashColor;
  final InteractiveInkFeatureFactory _splashFactory;
  final VisualDensity _visualDensity;
  final TextTheme _textTheme;
  final BottomSheetThemeData _bottomSheetThemeData;
  final BottomNavigationBarThemeData _bottomNavigationBarTheme;
  final ButtonThemeData _buttonThemeData;

  AppTheme._({
    @required this.id,
    Brightness brightness,
    Brightness accentColorBrightness,
    Color primaryColor,
    Color buttonColor,
    Color indicatorColor,
    Color primaryColorDark,
    Color primaryColorLight,
    InputDecorationTheme inputTheme,
    Color scaffoldBackgroundColor,
    Color toggleableActiveColor,
    Color accentColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    VisualDensity visualDensity,
    TextTheme textTheme,
    BottomSheetThemeData bottomSheetThemeData,
    BottomNavigationBarThemeData bottomNavigationBarTheme,
    ButtonThemeData buttonThemeData,
  })  : _brightness = brightness,
        _accentColorBrightness = accentColorBrightness,
        _primaryColor = primaryColor,
        _buttonColor = buttonColor,
        _indicatorColor = indicatorColor,
        _primaryColorDark = primaryColorDark,
        _primaryColorLight = primaryColorLight,
        _toggleableActiveColor = toggleableActiveColor,
        _textFieldTheme = inputTheme,
        _scaffoldBackgroundColor = scaffoldBackgroundColor,
        _accentColor = accentColor,
        _splashColor = splashColor,
        _splashFactory = splashFactory,
        _visualDensity = visualDensity,
        _bottomSheetThemeData = bottomSheetThemeData,
        _bottomNavigationBarTheme = bottomNavigationBarTheme,
        _buttonThemeData = buttonThemeData,
        _textTheme = textTheme;

  /// Light Theme Configurations
  static AppTheme light() {
    return AppTheme._(
      id: LIGHT_THEME_ID,
      brightness: Brightness.light,
      accentColorBrightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      primaryColorDark: AppColors.secondaryColor.shade200,
      buttonColor: AppColors.primaryColor,
      indicatorColor: Colors.white,
      toggleableActiveColor: AppColors.secondaryColor,
      accentColor: AppColors.accentColor,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: false,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintStyle: TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(color: AppColors.errorRed),
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.accentColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorRed, width: 1.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorRed),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      textTheme: TextTheme()
        ..apply(
          displayColor: Colors.black87, // For headline 1 - 6
          bodyColor: Colors.black87, // For every other text style
        ),
    );
  }

  /// Dark Theme Configurations
  static AppTheme dark() {
    return AppTheme._(
      id: DARK_THEME_ID,
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColor: AppColors.secondaryColor,
      primaryColorDark: AppColors.secondaryColor.shade800,
      toggleableActiveColor: AppColors.secondaryColor,
      primaryColorLight: AppColors.secondaryColor,
      buttonColor: AppColors.primaryColor,
      indicatorColor: Colors.white,
      accentColor: AppColors.accentColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        isDense: true,
        filled: false,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintStyle: TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(color: AppColors.errorRed),
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.accentColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorRed, width: 1.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorRed),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      textTheme: TextTheme()
        ..apply(
          displayColor: Colors.white, // For headline 1 - 6
          bodyColor: Colors.white, // For every other text style
        ),
    );
  }

  ThemeData themeData() {
    return ThemeData(
      brightness: this._brightness,
      accentColorBrightness: this._accentColorBrightness,
      primaryColor: this._primaryColor,
      buttonColor: this._buttonColor,
      indicatorColor: this._indicatorColor,
      primaryColorDark: this._primaryColorDark,
      primaryColorLight: this._primaryColorLight,
      toggleableActiveColor: this._toggleableActiveColor,
      inputDecorationTheme: this._textFieldTheme,
      accentColor: this._accentColor,
      splashColor: this._splashColor,
      splashFactory: this._splashFactory,
      scaffoldBackgroundColor: this._scaffoldBackgroundColor,
      visualDensity: this._visualDensity,
      bottomSheetTheme: this._bottomSheetThemeData,
      bottomNavigationBarTheme: this._bottomNavigationBarTheme,
      buttonTheme: this._buttonThemeData,
      textTheme: GoogleFonts.montserratTextTheme(this._textTheme),
    );
  }

  AppTheme copyWith({
    Brightness brightness,
    Brightness accentColorBrightness,
    Color primaryColor,
    Color buttonColor,
    Color indicatorColor,
    Color primaryColorDark,
    Color primaryColorLight,
    Color toggleableActiveColor,
    Color scaffoldBackgroundColor,
    Color accentColor,
    Color splashColor,
    InputDecorationTheme textFieldTheme,
    InteractiveInkFeatureFactory splashFactory,
    VisualDensity visualDensity,
    TextTheme textTheme,
    BottomSheetThemeData bottomSheetThemeData,
    BottomNavigationBarThemeData bottomNavigationBarTheme,
    ButtonThemeData buttonThemeData,
  }) {
    return AppTheme._(
      id: this.id,
      brightness: brightness ?? this._brightness,
      accentColorBrightness: accentColorBrightness ?? this._accentColorBrightness,
      primaryColor: primaryColor ?? this._primaryColor,
      buttonColor: buttonColor ?? this._buttonColor,
      indicatorColor: indicatorColor ?? this._indicatorColor,
      primaryColorDark: primaryColorDark ?? this._primaryColorDark,
      primaryColorLight: primaryColorLight ?? this._primaryColorLight,
      inputTheme: textFieldTheme ?? this._textFieldTheme,
      scaffoldBackgroundColor: scaffoldBackgroundColor ?? this._scaffoldBackgroundColor,
      toggleableActiveColor: toggleableActiveColor ?? this._toggleableActiveColor,
      accentColor: accentColor ?? this._accentColor,
      splashColor: splashColor ?? this._splashColor,
      splashFactory: splashFactory ?? this._splashFactory,
      visualDensity: visualDensity ?? this._visualDensity,
      textTheme: textTheme ?? this._textTheme,
      bottomSheetThemeData: bottomSheetThemeData ?? this._bottomSheetThemeData,
      bottomNavigationBarTheme: bottomNavigationBarTheme ?? this._bottomNavigationBarTheme,
      buttonThemeData: buttonThemeData ?? this._buttonThemeData,
    );
  }
}
