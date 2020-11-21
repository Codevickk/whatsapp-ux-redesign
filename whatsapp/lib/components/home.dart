import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/app_bar.dart';
import 'package:whatsapp/widgets/bottom_nav.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/fab.dart';
import 'package:whatsapp/widgets/status_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  int _page = 0;

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  String title() {
    String title;
    if (_page == 0) {
      title = "Chats";
    } else if (_page == 1) {
      title = "Groups";
    } else if (_page == 2) {
      title = 'Status';
    } else {
      title = "Calls";
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: customAppBar(title(), false, context),
          body: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: onPageChanged,
                children: [
                  chatList(context),
                  chatList(context),
                  statusList(context),
                  chatList(context),
                ],
              )),
          floatingActionButton: fab(_page, context),
          bottomNavigationBar: bottomNavBar(_page, context, navigationTapped)),
    );
  }
}
