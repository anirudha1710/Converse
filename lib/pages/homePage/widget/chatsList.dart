import 'package:converse/config/images.dart';
import 'package:converse/pages/homePage/widget/chatTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        InkWell(
          onTap: () {
            Get.toNamed("/chatPage");
          },
          child: ChatTile(
              imageUrl: AssetsImage.girlPic,
              name: "Sejal",
              lastChat: "Baad mai baat karte hai",
              lasttime: "1:34 AM"),
        ),
        ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Shashwat",
            lastChat: "Bakchod ho kya",
            lasttime: "12:45 AM"),
        ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "Sejal",
            lastChat: "Baad mai baat karte hai",
            lasttime: "1:34 AM"),
        ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Shashwat",
            lastChat: "Bakchod ho kya",
            lasttime: "12:45 AM"),
        ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "Sejal",
            lastChat: "Baad mai baat karte hai",
            lasttime: "1:34 AM"),
        ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Shashwat",
            lastChat: "Bakchod ho kya",
            lasttime: "12:45 AM"),
        ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "Sejal",
            lastChat: "Baad mai baat karte hai",
            lasttime: "1:34 AM"),
        ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Shashwat",
            lastChat: "Bakchod ho kya",
            lasttime: "12:45 AM"),
        ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "Sejal",
            lastChat: "Baad mai baat karte hai",
            lasttime: "1:34 AM"),
        ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Shashwat",
            lastChat: "Bakchod ho kya",
            lasttime: "12:45 AM"),

      ],
    );
  }
}
