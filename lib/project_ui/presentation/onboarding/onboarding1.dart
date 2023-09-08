import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_images.dart';

import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onboarding1 extends StatelessWidget {
  const onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 167.5.h, left: 50.w, right: 50.w),
              child: Image.asset(
                AppImages.Rheumatology,
                width: 268.79.w,
                height: 265.52.h,
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 167.w, vertical: 30.h),
                child: Image.asset(
                  AppImages.slider,
                  width: 43.w,
                  height: 6.h,
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 20.w,right: 48.w),
            //   child: ListTile(
            //     title: Center(
            //       child: Text(
            //         AppString.Symptoms,
            //         style: TextStyle(fontFamily: AppFonts.pop, fontSize: 21.w),
            //       ),
            //     ),
            //     subtitle: Text(
            //       AppString.compelte,
            //       style: TextStyle(
            //           fontFamily: AppFonts.pop,
            //           fontSize: 20.w,
            //           color: AppColor.black),
            //     ),
            //   ),
            // ),
            Padding(
              padding:  EdgeInsets.only(left: 50.w),
              child: Column(
                children: [
                  Text(AppString.Symptoms,style: TextStyle(fontSize: 21.sp),),

                ],
              ),
            ),
           SizedBox(height:130.h ,),
            customebutton(text: "Next"),
          ],
        ),
      ),
    );
  }
}
