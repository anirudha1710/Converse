import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../config/images.dart';
import '../../../controller/profileController.dart';

class LoginUserInfo extends StatelessWidget {
  const LoginUserInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Container(
      padding: const EdgeInsets.all(20),
      //height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetsImage.girlPic,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text(
                        profileController.currentUser.value.name ?? "User",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text(
                        profileController.currentUser.value?.email ??
                            "No email available",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.background,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsImage.profileAudioCall,
                            width: 25,
                            color: const Color(0xff039c00),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Call",
                            style: TextStyle(
                              color: Color(0xff039c00),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.background,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsImage.profileVideoCall,
                            width: 25,
                            color: const Color(0xffFF9900),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Video",
                            style: TextStyle(
                              color: Color(0xffFF9900),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.background,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AssetsImage.appIconsSVG,
                            width: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Chat",
                            style: TextStyle(
                              color: Color(0xff0057FF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
