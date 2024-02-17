import 'package:converse/widget/primaryButton.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: "Full Name", prefixIcon: Icon(Icons.person)),
        ),
        const SizedBox(
          height: 30,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: "Email", prefixIcon: Icon(Icons.person)),
        ),
        const SizedBox(
          height: 30,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: "Password", prefixIcon: Icon(Icons.password_outlined)),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              ontap: (){},
              btnName: "SIGNUP",
              icon: Icons.lock_open_outlined,
            ),
          ],
        )
      ],
    );
  }
}
