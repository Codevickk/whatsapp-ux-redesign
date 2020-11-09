import 'package:flutter/material.dart';
import 'package:wio_flutter/widgets/app_bar.dart';
import 'package:wio_flutter/widgets/bottom_nav.dart';
import 'package:wio_flutter/widgets/chat_list.dart';
import 'package:badges/badges.dart';
import 'package:wio_flutter/widgets/fab.dart';

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
            padding: const EdgeInsets.all(8.0),
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: onPageChanged,
              children: [
                chatList(),
                chatList(),
                chatList(),
                chatList(),
              ],
            )),
        floatingActionButton: fab(_page, context),
        bottomNavigationBar: bottomNavBar(_page, context, navigationTapped)
      ),
    );
  }
}
