import 'package:converse/widget/primaryButton.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40,),
        TextField(
          decoration: InputDecoration(
              hintText: "Full Namr",
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(
          height: 40,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Password", prefixIcon: Icon(Icons.password_outlined)),
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(btnName: "LOGIN", icon: Icons.lock_open_outlined),
          ],
        )
      ],
    );
  }
}
