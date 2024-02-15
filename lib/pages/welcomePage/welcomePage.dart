import 'package:converse/config/images.dart';
import 'package:converse/config/string.dart';
import 'package:converse/pages/welcomePage/widgets/welcomeBody.dart';
import 'package:converse/pages/welcomePage/widgets/welcomeFooterButton.dart';
import 'package:converse/pages/welcomePage/widgets/welcomeHeading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WelcomeHeading(),
              WelcomeBody(),
              WelcomeFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
