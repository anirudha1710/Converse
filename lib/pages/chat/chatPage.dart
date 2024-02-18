import 'package:converse/config/images.dart';
import 'package:converse/pages/chat/widget/chatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AssetsImage.girlPic),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sejal",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "online",
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatMicSVG,
              ),
            ),
            const SizedBox(width: 10,),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(filled: false, hintText: "Type message...."),
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatGallerySVG,
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatSendSVG,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const ChatBubble(
              message: "Hey what's up",
              imageUrl: "",
              isComming: true,
              status: "read",
              time: "2:30 PM",
            ),
            const ChatBubble(
              message: "good",
              imageUrl: "",
              isComming: false,
              status: "read",
              time: "2:30 PM",
            ),
            const ChatBubble(
              message: "Manali kaisa tha😂😂",
              imageUrl:
                  "https://www.tripsavvy.com/thmb/ZDRQXV-PiFDTFZu4x22mZkYuw9s=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-930881934-5ae56fe48023b90036464e72.jpg",
              isComming: false,
              status: "read",
              time: "2:30 PM",
            ),
          ],
        ),
      ),
    );
  }
}
