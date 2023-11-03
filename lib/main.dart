import 'package:flutter/material.dart';
import 'package:pine/features/navBar/nav_bar.dart';
import 'package:pine/utils/custom_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pine Cinema',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const NavBar(),
    );
  }
}


// scrolledUnderElevation: 0  [this removes the appBar color change on scroll]