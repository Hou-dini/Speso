import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFF720D5D);
const primaryColorDarkVariant = Color(0xFF4E0D3A);
const primaryColorLightVariant = Color(0xFF5D1049);
const secondaryColor = Color(0xFFE30425);
const onPrimaryColor = Colors.white;
const errorColor = Colors.orange;

class SpesoAppTheme {
  SpesoAppTheme();

  ThemeData spesoTheme() {
    return ThemeData(
      colorScheme: _spesoColorScheme(),
      textTheme: _spesoTextTheme(),
      appBarTheme: _spesoAppBarTheme(),
      bottomNavigationBarTheme: _spesoBottomNavBarTheme(),
      scaffoldBackgroundColor: primaryColorDarkVariant,
    );
  }

  TextTheme _spesoTextTheme() {
    return TextTheme(
        headline4: GoogleFonts.notoSans(
          fontSize: 33,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        headline5: GoogleFonts.notoSans(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        headline6: GoogleFonts.notoSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: onPrimaryColor,
        ),
        subtitle1: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
          color: onPrimaryColor,
        ),
        subtitle2: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: onPrimaryColor,
        ),
        bodyText1: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: onPrimaryColor,
        ),
        bodyText2: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: onPrimaryColor,
        ),
        button: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
          color: onPrimaryColor,
        ),
        caption: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: onPrimaryColor,
        ),
        overline: GoogleFonts.notoSans(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
          color: onPrimaryColor,
        ));
  }

  ColorScheme _spesoColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: primaryColor,
      onPrimary: onPrimaryColor,
      secondary: secondaryColor,
      surface: onPrimaryColor,
      background: primaryColorDarkVariant,
      onSecondary: onPrimaryColor,
      onSurface: primaryColorLightVariant,
      onBackground: primaryColorLightVariant,
      error: errorColor,
      onError: onPrimaryColor,
    );
  }

  AppBarTheme _spesoAppBarTheme() {
    return AppBarTheme(
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      scrolledUnderElevation: 8.0,
      titleTextStyle: _spesoTextTheme().headline6,
      backgroundColor: primaryColor,
      foregroundColor: onPrimaryColor,
      elevation: 1.0,
    );
  }

  BottomNavigationBarThemeData _spesoBottomNavBarTheme() {

    TextStyle selectedLabelTextStyle = TextStyle(
      color: onPrimaryColor.withOpacity(0.8),
      fontSize: 14.0,
      fontStyle: FontStyle.normal,
    );

    TextStyle unselectedLabelTextStyle = TextStyle(
      color: onPrimaryColor.withOpacity(0.6),
      fontSize: 12.0,
      fontStyle: FontStyle.normal,
    );

    return BottomNavigationBarThemeData(
      elevation: 1.0,
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: selectedLabelTextStyle,
      unselectedLabelStyle: unselectedLabelTextStyle,
    );
  }
}
