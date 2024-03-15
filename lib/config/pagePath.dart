import 'package:converse/pages/auth/authPage.dart';
import 'package:converse/pages/chat/chatPage.dart';
import 'package:converse/pages/homePage/homePage.dart';
import 'package:get/get.dart';

import '../pages/userprofile/userprofilepage.dart';
import '../pages/userprofile/userupdateProfile.dart';

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
  // GetPage(
  //   name: "/profilePage",
  //   page: () => UserProfilePage(),
  //   transition: Transition.rightToLeft,
  // ),
  // GetPage(
  //   name: "/updateProfilePage",
  //   page: () => UserUpdateProfile(),
  //   transition: Transition.rightToLeft,
  // ),
];
