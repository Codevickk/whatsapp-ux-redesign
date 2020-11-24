import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/components/chat_screen.dart';
import 'voice_play.dart';
import 'chat_card.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Theme.of(context).accentColor,
          leading: IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Container(
                        height: 150,
                        width: 430,
                        child: voicePlay(context),
                      ),
                    )),
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
          ),
          title: Row(
            children: [
              Text(
                "Dan Scott",
                style: TextStyle(color: Colors.white),
              ),
              Icon(Icons.mic_outlined, color: Colors.white)
            ],
          ),
          trailing: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Get.to(ChatScreen()),
                  onDoubleTap: () {
                    print("Trigger a call ");
                  },
                  onLongPress: () {
                    return Tooltip(
                        message: "",
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.delete_outline,
                                ),
                                onPressed: null),
                            VerticalDivider(
                              color: Colors.grey[600],
                            ),
                            IconButton(
                                icon: Icon(Icons.archive_outlined),
                                onPressed: null),
                            VerticalDivider(
                              color: Colors.grey[600],
                            ),
                             IconButton(
                                icon: Icon(Icons.volume_mute_outlined),
                                onPressed: null),
                          ],
                        ));
                    print(
                        "Show tool tip with delete, archive, block, mute or video call options");
                  },
                  child: chatCard(
                      context,
                      "https://images.unsplash.com/photo-1604772659841-a1612db7000f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                      "Tiffani Ashley",
                      "12:30 am",
                      "Some last message😂",
                      "${index + 1}",
                      false),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemCount: 20),
        ),
      ],
    );
  }
}
