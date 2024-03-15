import 'package:converse/controller/authController.dart';
import 'package:converse/controller/profileController.dart';
import 'package:converse/pages/userprofile/widgets/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    ProfileController profileController = Get.put(ProfileController());
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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const LoginUserInfo(),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                authController.logoutUser();
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
