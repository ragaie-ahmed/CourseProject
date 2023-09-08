
import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_images.dart';
import 'package:courseproject/core/app/appcolor.dart';

import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 167.5.h, left: 50.w, right: 50.w),
            child: Image.asset(
              AppImages.doctor,
              width: 268.79.w,
              height: 265.52.h,
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 167.w, vertical: 30.h),
              child: Image.asset(
                AppImages.slider2,
                width: 43.w,
                height: 6.h,
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: Column(
              children: [
                Text(AppString.review,style: TextStyle(fontSize: 15.w,
                    color: AppColor.primarycolor,
                    fontFamily: "Poppins-ThinItalic.ttf")),

              ],
            ),
          ),
          SizedBox(height:130.h ,),
          customebutton(text: "Next"),
        ],
      ),
    );
  }
}
