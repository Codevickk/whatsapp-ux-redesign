import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myStatus(BuildContext context) {
  return Container(
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1605969186453-3d5dacab4199?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Today, 15:00",
                style: TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
          Expanded(
              child: Container(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(Icons.more_horiz_outlined),
              onPressed: () {},
            ),
          ))
        ],
      ));
}
