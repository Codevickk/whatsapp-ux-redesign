import 'package:flutter/material.dart';

Widget chatCard(BuildContext context, String dp, String name, String time,
    String lastMessage, String unreadCount, bool unread) {
  return Container(
      height: 60.0,
      child: ListTile(
          autofocus: true,
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor,
            backgroundImage: NetworkImage(dp),
            radius: 30,
          ),
          title: Text(
            "$name",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text("$lastMessage"),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "$time",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Theme.of(context).accentColor
                ),
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Theme.of(context).accentColor,
                child: Text("$unreadCount"),
              )
            ],
          )));
}
