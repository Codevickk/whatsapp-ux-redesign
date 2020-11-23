import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/recent_status.dart';

Widget sectionDividerRecent(BuildContext context) {
  return Container(
    child: Text(
      "Recent updates",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Widget sectionDividerViewed(BuildContext context) {
  return Container(
    child: Text(
      "Viewed updates",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Widget sectionDividerMuted(BuildContext context) {
  return ExpansionTile(
    title: Text(
      "Muted updates",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    children: [
      ...recentStatus(context)
    ],
  );
}
