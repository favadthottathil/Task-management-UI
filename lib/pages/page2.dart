import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_repo_listing_app/pages/tab_bar_screens/screen1.dart';
import 'package:github_repo_listing_app/pages/tab_bar_screens/screen2.dart';
import 'package:github_repo_listing_app/pages/tab_bar_screens/screen3.dart';
import 'package:github_repo_listing_app/style/style.dart';
import 'package:sizer/sizer.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFFE9E8FA),
                  backgroundImage: AssetImage(
                    AppStyle.avatharImage,
                  ),
                ),
                SvgPicture.asset(AppStyle.searchIcon, width: 8.w),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              'Project',
              style: AppStyle.popinsBlackColor13Bold,
            ),
          ),
          SizedBox(height: 1.h),
          Center(
            child: SizedBox(
              height: 50,
              // width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 0,
                // color: Colors.amber,
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: AppStyle.popinsBlackColor10Bold,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Ongoing',
                        style: AppStyle.popinsBlackColor10Bold,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                        style: AppStyle.popinsBlackColor10Bold,
                      ),
                    )
                  ],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppStyle.lightBlue,
                  ),
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Screen1(),
                Screen2(),
                Screen3(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
