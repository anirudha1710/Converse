import 'package:converse/controller/authController.dart';
import 'package:converse/controller/profileController.dart';
import 'package:converse/pages/profile/widgets/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../config/images.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/updateProfilePage");
            },
            icon: const Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            LoginUserInfo(),
            Spacer(),
            ElevatedButton(onPressed: () {authController.logoutUser();}, child: Text("Logout"),),
          ],
        ),
      ),
    );
  }
}
