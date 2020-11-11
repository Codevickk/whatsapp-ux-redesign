import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

Widget bottomNavBar(int _page, BuildContext context, navigationTapped) {
  return Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Theme.of(context).appBarTheme.color,
      primaryColor: Theme.of(context).accentColor,
      textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.black),
          ),
    ),
    child: BottomNavigationBar(
      elevation: 4.0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Badge(
                badgeContent: Text("9"),
                badgeColor: Theme.of(context).accentColor,
                child: Icon(Icons.chat_bubble_outline_rounded)),
            label: "Chats"),
        BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text("2"),
            badgeColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.group_rounded,
            ),
          ),
          label: "Groups",
        ),
        BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text(""),
            badgeColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.panorama_fish_eye_rounded,
            ),
          ),
          label: "Status",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Calls",
        ),
      ],
      onTap: navigationTapped,
      currentIndex: _page,
    ),
  );
}
