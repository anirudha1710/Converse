import 'package:converse/pages/auth/authPage.dart';
import 'package:converse/pages/chat/chatPage.dart';
import 'package:converse/pages/homePage/homePage.dart';
import 'package:converse/pages/profile/profilepage.dart';
import 'package:converse/pages/profile/updateProfile.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/HomePage",
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/chatPage",
    page: () => ChatPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/profilePage",
    page: () => ProfilePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/updateProfilePage",
    page: () => UpdateProfile(),
    transition: Transition.rightToLeft,
  ),
];
