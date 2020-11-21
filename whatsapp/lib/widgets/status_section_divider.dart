import 'package:flutter/cupertino.dart';

Widget sectionDividerRecent(BuildContext context) {
  return Container(
    child: Text(
      "Recent updates",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
Widget sectionDividerViewed(BuildContext context){
  return Container(
    child: Text(
      "Viewed updates",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
