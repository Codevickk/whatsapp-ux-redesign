import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/recent_status.dart';
import 'package:whatsapp/widgets/status_section_divider.dart';
import 'package:whatsapp/widgets/viewed_status.dart';
import 'my_status.dart';

class StatusList extends StatefulWidget {
  @override
  _StatusListState createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          sectionDividerViewed(context),
          SizedBox(
            height: 10.0,
          ),
          ...viewedStatus(context),
          sectionDividerMuted(context)
        ],
      ),
    );
  }
}
