import 'package:flutter/material.dart';
import 'package:github_repo_listing_app/style/style.dart';
import 'package:sizer/sizer.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0, // adds a shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // adds rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'App Animation',
                    style: AppStyle.popinsBlackColor13Bold,
                  ),
                  Text(
                    'Today Shared-by Unbox Digital',
                    style: AppStyle.popinsGreyColor12Normal,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Team',
                    style: AppStyle.popinsBlackColor10Bold,
                  ),
                  Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyle.kBlack,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.h,
                        // top: 90,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40.h,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
