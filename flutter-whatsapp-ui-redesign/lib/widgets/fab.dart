import 'package:flutter/material.dart';

Widget fab(int _page, BuildContext context) {
  return _page == 2
      ? Container(
          height: 116,
          child: Column(
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.text_format),
              ),
              SizedBox(
                height: 4.0,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.camera_alt_outlined),
              )
            ],
          ),
        )
      : _page == 3
          ? null
          : FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.message_outlined),
              backgroundColor: Theme.of(context).accentColor,
            );
}
