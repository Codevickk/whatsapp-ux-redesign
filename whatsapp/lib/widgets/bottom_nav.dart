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
      elevation: 2.0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Badge(
                badgeContent: Text("9"),
                badgeColor: Theme.of(context).accentColor,
                child: Container(
                    child: Image.network(
                  "https://cdn.onlinewebfonts.com/svg/img_314410.png",
                  height: 24,
                  width: 24,
                  color: _page == 0 ? Theme.of(context).accentColor : null,
                ))),
            label: ""),
        BottomNavigationBarItem(
            icon: Badge(
                badgeContent: Text("2"),
                badgeColor: Theme.of(context).accentColor,
                child: Container(
                    child: Image.network(
                  "https://cdn.iconscout.com/icon/free/png-512/group-chat-2193254-1878104.png",
                  height: 24,
                  width: 24,
                  color: _page == 1 ? Theme.of(context).accentColor : null,
                ))),
            label: ""),
        BottomNavigationBarItem(
            icon: Badge(
              badgeContent: Text(""),
              badgeColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.panorama_fish_eye_rounded,
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone_outlined),
          label: "",
        ),
      ],
      onTap: navigationTapped,
      currentIndex: _page,
    ),
  );
}
