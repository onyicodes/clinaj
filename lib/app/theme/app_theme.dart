import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
);

class ClinajAppTheme {
  static Color lightThemeTextColor = const Color(0xff4d4d4d);
  static Color darkThemeTextColor = const Color(0xfffefefe);

  static TextTheme primaryTextThemeLight = TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xff4d4d4d),
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xff4d4d4d),
    ),
    displayLarge: GoogleFonts.roboto(
      fontSize: 34.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xff4d4d4d),
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: const Color(0xff4d4d4d),
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xff4d4d4d),
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: const Color(0xff4d4d4d),
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff4d4d4d),
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff4d4d4d),
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff4d4d4d),
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: const Color(0xff4d4d4d),
    ),
  );

  static TextTheme primaryTextThemeDark = TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: darkThemeTextColor,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: darkThemeTextColor,
    ),
    displayLarge: GoogleFonts.roboto(
      fontSize: 34.0,
      fontWeight: FontWeight.w700,
      color: darkThemeTextColor,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: darkThemeTextColor,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: darkThemeTextColor,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: darkThemeTextColor,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: darkThemeTextColor,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: darkThemeTextColor,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: darkThemeTextColor,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: darkThemeTextColor,
    ),
  );
  InputDecorationTheme inputDecorationTheme = const InputDecorationTheme();

  static IconThemeData darkIconTheme =
      const IconThemeData(color: Color(0xffafafaf));
  static IconThemeData lightIconTheme = IconThemeData(color: Colors.grey[900]);
  static DrawerThemeData drawerTheme = const DrawerThemeData(
    backgroundColor: Color(0xff1F88C1),
  );

  static DrawerThemeData darkThemeDrawerTheme = const DrawerThemeData(
    backgroundColor: Color(0xff0C4D69),
  );

  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              return Colors.black;
            },
          ),
        ),
        indicatorColor: const Color(0xff1F88C1),
        secondaryHeaderColor: const Color(0xff4d4d4d),
        primaryColor: const Color(0xff0EBE7F),
        primaryColorDark: const Color(0xff00374E),
        cardColor: const Color(0xfffdfdfd),
        canvasColor: const Color(0xffefefef),
        selectedRowColor: const Color(0xfff5f5ff),
        backgroundColor: Colors.white,
        toggleableActiveColor: const Color(0xff1DCDFE),
        dialogBackgroundColor: Colors.white,
        drawerTheme: drawerTheme,
        shadowColor: Colors.grey.shade300,
        scaffoldBackgroundColor: const Color(0xffFDFEFF),
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark, // status bar color
                systemNavigationBarContrastEnforced: false,
                systemNavigationBarColor: Color(0xff1F88C1))),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color(0xff1F88C1),
            backgroundColor: Color(0xffffffff)),
        primaryTextTheme: primaryTextThemeLight);
  }

  static ThemeData dark() {
    Color darkThemeColor = const Color(0xff00161f);
    Color darkCardColor = const Color(0xff062735);

    return ThemeData(
        brightness: Brightness.dark,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              return Colors.black;
            },
          ),
        ),
        indicatorColor: const Color(0xff1F88C1),
        secondaryHeaderColor: const Color(0xff4d4d4d),
        primaryColor: const Color(0xff000000),
        primaryColorDark: darkThemeColor,
        backgroundColor: darkThemeColor,
        dialogBackgroundColor: darkCardColor,
        canvasColor: darkCardColor,
        cardColor: darkCardColor,
        selectedRowColor: const Color(0xff005a80),
        drawerTheme: darkThemeDrawerTheme,
        scaffoldBackgroundColor: darkThemeColor,
        shadowColor: Colors.grey.shade300,
        iconTheme: darkIconTheme,
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: darkCardColor,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: darkCardColor,
                statusBarBrightness: Brightness.dark,
                systemNavigationBarContrastEnforced: false,
                systemNavigationBarColor: const Color(0xff1F88C1))),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: const Color(0xff29ABE2),
            backgroundColor: darkCardColor),
        primaryTextTheme: primaryTextThemeDark);
  }
}
