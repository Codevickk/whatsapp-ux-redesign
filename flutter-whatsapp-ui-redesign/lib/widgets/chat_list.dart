import 'package:flutter/material.dart';

import 'chat_card.dart';

Widget chatList() {
  return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return chatCard(
            context,
            "https://images.unsplash.com/photo-1604772659841-a1612db7000f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "Tiffani Ashley",
            "12:30 am",
            "Some last message😂",
            "${index + 1}",
            false);
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemCount: 10);
}
