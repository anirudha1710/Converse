import 'package:converse/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    TextEditingController name = TextEditingController(text: "Anirudha Sharma");
    TextEditingController email = TextEditingController(text: "ani@gmail.com");
    TextEditingController phone = TextEditingController(text: "0123456789");
    TextEditingController status = TextEditingController(text: "jghrfuihdi");
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              // height: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.background,
                              radius: 80,
                              child: Icon(
                                Icons.image,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: name,
                          enabled: isEdit.value,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Name",
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        TextField(
                          controller: status,
                          enabled: isEdit.value,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Status",
                            prefixIcon: Icon(
                              Icons.info,
                            ),
                          ),
                        ),
                        TextField(
                          controller: email,
                          enabled: false,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Email",
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                        ),
                        TextField(
                          controller: phone,
                          enabled: isEdit.value,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Phone",
                            prefixIcon: Icon(
                              Icons.phone,
                            ),
                          ),
                        ),
                        
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryButton(btnName: "Edit", icon: Icons.edit, ontap: (){}),
                          ],
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
