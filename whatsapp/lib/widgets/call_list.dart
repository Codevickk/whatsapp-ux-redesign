import 'package:flutter/material.dart';

class CallList extends StatefulWidget {
  @override
  _CallListState createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        addAutomaticKeepAlives: true,
        itemBuilder: (BuildContext context, int index) {
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
                        "Emma Bostian",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call_made_outlined,
                            color: Colors.red,
                          ),
                          Text(
                            "Today, 15:00",
                            style: TextStyle(color: Colors.grey[600]),
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.call_outlined),
                      onPressed: () {},
                    ),
                  ))
                ],
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Divider(
                color: Colors.grey[600],
              )
            ],
          );
        },
        itemCount: 450);
  }
}
