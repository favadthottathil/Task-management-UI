import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_repo_listing_app/style/style.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List numbers = List.generate(4, (index) => "Item $index");

  List gridviewColors = [
    AppStyle.lightOrange,
    AppStyle.lightBlue,
    AppStyle.lightGreen,
    AppStyle.darkOrage
  ];

  List gridIcons = [
    CupertinoIcons.timer,
    CupertinoIcons.shuffle,
    CupertinoIcons.doc_checkmark,
    Ionicons.document_lock,
  ];

  List gridNames = [
    'In Progress',
    'Ongoing',
    'Completed',
    'Cancel'
  ];

  @override
  Widget build(BuildContext context) {
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
                'Hello',
                style: AppStyle.popinsGreyColor16Normal,
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text('Alex Macroni', style: AppStyle.popinsBlackColor16Bold),
            ),
            SizedBox(height: 1.h),
            Flexible(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                padding: const EdgeInsets.all(25),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                      color: gridviewColors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(gridIcons[index]),
                        SizedBox(height: 1.h),
                        Text(
                          gridNames[index],
                          style: AppStyle.popinsWhite12Regular,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 1.h),
            Text('Daily Task', style: AppStyle.popinsBlackColor16Bold)
          ],
        ),
      ),
    );
  }
}
