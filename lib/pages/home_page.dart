import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_repo_listing_app/pages/widgets/dropdownwidget.dart';
import 'package:github_repo_listing_app/style/style.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text('Alex Macroni', style: AppStyle.popinsBlackColor13Bold),
            ),
            SizedBox(height: 1.h),
            Flexible(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                padding: EdgeInsets.only(left: 2.h, right: 2.h),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
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
            Padding(
              padding: EdgeInsets.only(left: 2.h, right: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Task',
                    style: AppStyle.popinsBlackColor13Bold,
                  ),
                  const CustomDropDown(),
                ],
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(CupertinoIcons.checkmark_circle),
                    title: Text(
                      'App Animation',
                      style: AppStyle.popinsBlackColor10Bold,
                    ),
                    subtitle: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 1.h,
                        color: Colors.greenAccent,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    trailing: Stack(
                      children: [
                        Wrap(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber,
                              ),
                            ),
                            Positioned(
                              right: 80,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppStyle.kBlack,
                              ),
                            ),
                            SizedBox(width: 1.w),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
