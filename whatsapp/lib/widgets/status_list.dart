import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/recent_status.dart';
import 'package:whatsapp/widgets/status_section_divider.dart';
import 'my_status.dart';

Widget statusList(BuildContext context) {
  return SingleChildScrollView(
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 5.0,
        ),
        myStatus(context),
        SizedBox(
          height: 10.0,
        ),
        sectionDividerRecent(context),
        SizedBox(
          height: 10.0,
        ),
        
        ...recentStatus(context),
      
      ],
    ),
  );
}
