import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

Widget bottomNavBar(int _page, BuildContext context, navigationTapped) {
  return Theme(
    data: Theme.of(context).copyWith(
      // sets the background color of the `BottomNavigationBar`
      canvasColor: Theme.of(context).appBarTheme.color,
      // sets the active color of the `BottomNavigationBar` if `Brightness` is light
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
              child: Icon(Icons.message)),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text("2"),
            badgeColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.group_rounded,
            ),
          ),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text(""),
            badgeColor: Theme.of(context).accentColor,
            child: Icon(
              Icons.panorama_fish_eye_rounded,
            ),
          ),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "",
        ),
      ],
      onTap: navigationTapped,
      currentIndex: _page,
    ),
  );
}
