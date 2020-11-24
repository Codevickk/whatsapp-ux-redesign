import 'package:flutter/material.dart';

Widget customAppBar(String title, bool user, BuildContext context) {
  return AppBar(
    leading: Image.network("https://i.pinimg.com/originals/3a/8d/ad/3a8dad7f872542a95103cb9ca74dc415.png"),
    title: Text(
      title,
      style: Theme.of(context).textTheme.subtitle1,
    ),
    centerTitle: true,
    actions: [
      IconButton(
          icon: Icon(
            Icons.search,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {}),
      IconButton(
          icon: Icon(
            Icons.more_vert_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {})
    ],
  );
}
