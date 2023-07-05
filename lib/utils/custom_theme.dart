import 'package:flutter/material.dart';
import 'package:pine/utils/constants.dart';

ColorScheme lightThemeColors(context) {
  return const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFEF5B6B),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Colors.grey,
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFF32424),
    onError: Color(0xFFF32424),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF4D4C4C),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF4D4C4C),
  );
}

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: const Color(0xFFEF5B6B),
    primaryColorLight: const Color(0xFFFFFFFF),
    disabledColor: const Color(0xfff4d4c4c),
    useMaterial3: true,
    dialogBackgroundColor:const Color(0xFFECEAEA),
    cardColor: const Color(0xFFFFFFFF),
    fontFamily: Constants.appFontlight.fontFamily,
    scaffoldBackgroundColor: lightThemeColors(context).background,
    textTheme: textThemelight(context),
    appBarTheme: appBarThemelight(context),
    colorScheme: lightThemeColors(context),
    iconTheme: const IconThemeData(color: Color(0xFF4D4C4C)),
  );
}

TextTheme textThemelight(context) {
  return TextTheme(
    bodyLarge: Constants.appFontlight
        .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
    bodyMedium: Constants.appFontlight
        .copyWith(fontWeight: FontWeight.normal, fontSize: 15),
    bodySmall: Constants.appFontlight.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 13,
        color: const Color(0xFF2983FF)),
    labelLarge: Constants.appFontlight.copyWith(
        fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
    labelMedium: Constants.appFontlight.copyWith(
        fontWeight: FontWeight.normal, fontSize: 13, color: Colors.white),
    labelSmall: Constants.appFontlight.copyWith(
        fontWeight: FontWeight.normal, fontSize: 13, color: const Color(0xFF4D4C4C)),
    displaySmall: Constants.appFontdark.copyWith(
        fontWeight: FontWeight.normal, fontSize: 14, color: const Color(0xFF4D4C4C)),
  );
}

appBarThemelight(context) {
  return AppBarTheme(
    backgroundColor: lightThemeColors(context).background,
    titleTextStyle: textThemelight(context).bodyLarge,
  );
}






















ColorScheme darkThemeColors(context) {
  return const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFEF5B6B),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFFBBBBBB),
    onSecondary: Color(0xFFEAEAEA),
    error: Color(0xFFF32424),
    onError: Color(0xFFF32424),
    background: Color(0xFF000000),
    onBackground: Color(0xFF505050),
    surface: Color(0xFF54B435),
    onSurface: Color(0xFF54B435),
  );
}



ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: darkThemeColors(context).background,
    fontFamily: Constants.appFontdark.fontFamily,
    textTheme: textThemedark(context),
    appBarTheme: appBarThemedark(context),
    colorScheme: darkThemeColors(context),
    primaryColor: const Color(0xFFEF5B6B),
    disabledColor: const Color.fromARGB(255, 221, 218, 218),
    dialogBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
    cardColor: const Color.fromARGB(255, 0, 0, 0),
    iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
  );
}



appBarThemedark(context) {
  return AppBarTheme(
    backgroundColor: darkThemeColors(context).background,
    titleTextStyle: textThemedark(context).bodyLarge,
  );
}



TextTheme textThemedark(context) {
  return TextTheme(
    bodyLarge: Constants.appFontdark
        .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
    bodyMedium: Constants.appFontdark
        .copyWith(fontWeight: FontWeight.normal, fontSize: 15),
    bodySmall: Constants.appFontdark.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 13,
        color: const Color(0xFF2983FF)),
    labelLarge: Constants.appFontdark.copyWith(
        fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
    labelMedium: Constants.appFontdark.copyWith(
        fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),
    labelSmall: Constants.appFontdark.copyWith(
        fontWeight: FontWeight.normal, fontSize: 15, color: const Color(0xFF4D4C4C)),
    displaySmall: Constants.appFontdark.copyWith(
        fontWeight: FontWeight.normal, fontSize: 14, color: const Color(0xFF4D4C4C)),
  );
}
