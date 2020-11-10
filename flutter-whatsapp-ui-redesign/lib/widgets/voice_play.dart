import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget voicePlay(BuildContext context) {
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
        subtitle: Flexible(
          child: Row(
            children: [
              Text(
                "Voice message",
                style: TextStyle(color: Colors.grey[400]),
              ),
              Icon(
                Icons.mic,
                color: Theme.of(context).accentColor,
              )
            ],
          ),
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
          onChanged: null,
          value: 0.5,
          activeColor: Theme.of(context).accentColor,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "0:00",
            style: TextStyle(color: Colors.grey[400], fontSize: 10.0),
          ),
          Text(
            "5:31",
            style: TextStyle(color: Colors.grey[400], fontSize: 10.0),
          )
        ],
      )
    ],
  );
}
