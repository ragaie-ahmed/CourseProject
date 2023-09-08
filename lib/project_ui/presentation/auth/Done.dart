import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_fonts.dart';
import 'package:courseproject/core/app/app_images.dart';
import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 70.h,left: 30.w),
              child: Image.asset(AppImages.man,width: 112.w,height: 250.h,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 50.h,left: 30.w),
              child: Text(AppString.congratulation,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w300,fontFamily: AppFonts.Poppins),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 50.h,left: 80.w),
              child: Text(AppString.account,style: TextStyle(fontSize: 14.sp,fontFamily: AppFonts.Poppins),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 50.h,left: 75.w),
              child: Image.asset(AppImages.perfect,width: 73.w,height: 73.h,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 60.h,left: 47.w),
              child: customebutton(text: AppString.done,fontsize: 14.sp),
            )
          ],
        ),
      ),
    );
  }
}
