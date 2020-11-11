import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/widgets/typing_area.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1605032187764-ae0c3c2e16fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            ),
            SizedBox(width: 2.0),
            Text(
              "Donny Sander",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.video_call_outlined, color: Colors.black),
              onPressed: null),
          IconButton(
            icon: Icon(Icons.call_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BubbleNormal(
                      delivered: true,
                      seen: true,
                      text: 'bubble normal without tailk',
                      color: Theme.of(context).accentColor,
                      tail: false,
                    ),
                    Text("10:00")
                  ],
                ),
                BubbleNormal(
                  delivered: true,
                  seen: true,
                  isSender: false,
                  text:
                      'bubble normal without tail: hdfkjhfdksjgdskjgdskjgdsdskjfbsvlkjsabvksadvbavlkasjbvlkjsabvjalkbv',
                  color: Theme.of(context).appBarTheme.color,
                  tail: false,
                ),
              ],
            )),
            typingArea(context)
          ],
        ),
      ),
    );
  }
}
