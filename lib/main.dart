import 'package:converse/config/pagePath.dart';
import 'package:converse/config/theme.dart';
import 'package:converse/pages/auth/authPage.dart';
import 'package:converse/pages/homePage/homePage.dart';
import 'package:converse/pages/splacePage/splacePage.dart';
import 'package:converse/pages/welcomePage/welcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Converse",
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const SplacePage(),
    );
  }
}