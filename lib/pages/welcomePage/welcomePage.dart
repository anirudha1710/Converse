import 'package:converse/config/images.dart';
import 'package:converse/config/string.dart';
import 'package:converse/pages/welcomePage/widgets/welcomeBody.dart';
import 'package:converse/pages/welcomePage/widgets/welcomeHeading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              WelcomeHeading(),
              SizedBox(
                height: 60,
              ),
              WelcomeBody(),
            ],
          ),
        ),
      ),
    );
  }
}
