import 'package:converse/config/pagePath.dart';
import 'package:converse/config/theme.dart';
import 'package:converse/pages/auth/authPage.dart';
import 'package:converse/pages/splacePage/splacePage.dart';
import 'package:converse/pages/welcomePage/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Converse",
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: WelcomePage(),
    );
  }
}