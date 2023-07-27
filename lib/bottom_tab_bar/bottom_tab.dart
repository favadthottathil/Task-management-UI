import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_repo_listing_app/pages/home_page.dart';
import 'package:github_repo_listing_app/pages/page2.dart';
import 'package:github_repo_listing_app/pages/page3.dart';
import 'package:github_repo_listing_app/pages/page4.dart';
import 'package:github_repo_listing_app/style/style.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class FabTabs extends StatefulWidget {
  FabTabs({super.key});

  int selectedIndex = 0;

  @override
  State<FabTabs> createState() => _FabTabsState();
}

class _FabTabsState extends State<FabTabs> {
  int currentIndex = 0;

  // screens lists

  // final List pages = [
  //   const HomePage(),
  //   const Page2(),
  //   const Page3(),
  //   const Page4(),
  // ];

  // For Storing per-page State for Navigating One Page To Another

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex == 0
        ? const HomePage()
        : currentIndex == 1
            ? const Page2()
            : currentIndex == 2
                ? const Page3()
                : const Page4();

    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('add fab button');
        },
        backgroundColor: AppStyle.primary,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          // color: Colors.cyan,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BottomIcons(
                  //   currentScreen: currentScreen,
                  //   currentIndex: currentIndex,
                  //   imageUrl: AppStyle.homeIcon,
                  // ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentIndex = 0;
                      });
                    },
                    minWidth: 50,
                    child: SvgPicture.asset(
                      AppStyle.homeIcon,
                      // ignore: deprecated_member_use
                      color: currentIndex == 0 ? AppStyle.primary : Colors.grey,
                      height: 25,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Page2();
                        currentIndex = 1;
                      });
                    },
                    minWidth: 50,
                    child: SvgPicture.asset(
                      AppStyle.documentIcon,
                      // ignore: deprecated_member_use
                      color: currentIndex == 1 ? AppStyle.primary : Colors.grey,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Page3();
                        currentIndex = 2;
                      });
                    },
                    minWidth: 50,
                    child: SvgPicture.asset(
                      AppStyle.mailIcon,
                      // ignore: deprecated_member_use
                      color: currentIndex == 2 ? AppStyle.primary : Colors.grey,
                      height: 25,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Page4();
                        currentIndex = 3;
                      });
                    },
                    minWidth: 50,
                    child: SvgPicture.asset(
                      AppStyle.settingsIcon,
                      // ignore: deprecated_member_use
                      color: currentIndex == 3 ? AppStyle.primary : Colors.grey,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BottomIcons extends StatefulWidget {
  BottomIcons({
    super.key,
    required this.currentScreen,
    required this.currentIndex,
    required this.imageUrl,
  });

  Widget currentScreen;
  int currentIndex;
  final String imageUrl;

  @override
  State<BottomIcons> createState() => _BottomIconsState();
}

class _BottomIconsState extends State<BottomIcons> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          widget.currentScreen = const HomePage();
          widget.currentIndex = 0;
        });
      },
      minWidth: 50,
      child: SvgPicture.asset(
        widget.imageUrl,
        // ignore: deprecated_member_use
        color: widget.currentIndex == 0 ? AppStyle.primary : Colors.grey,
        height: 25,
      ),
    );
  }
}
