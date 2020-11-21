import 'package:flutter/material.dart';
import 'voice_play.dart';
import 'chat_card.dart';

Widget chatList(BuildContext context) {
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
                    child: Container(height: 150, width: 430,  child: voicePlay(context),),
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
              return chatCard(
                  context,
                  "https://images.unsplash.com/photo-1604772659841-a1612db7000f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  "Tiffani Ashley",
                  "12:30 am",
                  "Some last message😂",
                  "${index + 1}",
                  false);
            },
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: 20),
      ),
    ],
  );
}
