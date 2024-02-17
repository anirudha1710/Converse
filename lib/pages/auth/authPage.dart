import 'package:converse/pages/auth/widgets/authPageBody.dart';
import 'package:converse/pages/welcomePage/welcomePage.dart';
import 'package:converse/pages/welcomePage/widgets/welcomeHeading.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              WelcomeHeading(),
              SizedBox(
                height: 20,
              ),
              AuthPageBody(),
            ],
          ),
        ),
      ),
    );
  }
}
