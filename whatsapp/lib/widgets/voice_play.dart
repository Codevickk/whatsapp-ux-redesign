import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget voicePlay(BuildContext context) {
  var currentTime;
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1604941522093-f9ffbee083db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
        ),
        title: Text(
          "Dan Scott",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Row(
          children: [
            Text(
              "Voice message",
              style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
            ),
            Icon(
              Icons.mic,
              color: Theme.of(context).accentColor,
            )
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.remove_red_eye_outlined),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(Icons.pause),
          onPressed: () {},
        ),
        title: Slider(
          onChanged: (value) {
            currentTime = value.toInt();
          },
          value: 0.5,
          activeColor: Theme.of(context).accentColor,
        ),
        trailing: Text("${currentTime??'0:00'}"),
      ),
    ],
  );
}
