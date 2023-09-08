
import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_images.dart';
import 'package:courseproject/core/app/appcolor.dart';

import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onboarding4 extends StatelessWidget {
  const onboarding4({super.key});

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
          SizedBox(height:120.h ,),
          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: Column(
              children: [
                Text(AppString.seek,style: TextStyle(fontSize: 21.sp,
                    color: AppColor.black,
                    fontFamily: "")),

              ],
            ),
          ),
          SizedBox(height:30.h ,),
          customebutton(text: "Next"),
          SizedBox(height:30.h ,),
          customebutton(text: "Next"),
          SizedBox(height:30.h ,),

        ],
      ),
    );
  }
}
