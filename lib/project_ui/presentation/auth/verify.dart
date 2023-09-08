import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_images.dart';
import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Padding(
    padding:  EdgeInsets.symmetric(horizontal: 41.w,vertical: 47.h),
    child: Column(
      children: [
        Text(AppString.verify,style: TextStyle(fontSize: 20.sp),),
        Padding(
          padding:  EdgeInsets.only(top: 55.h,),
          child: Image.asset(AppImages.verify),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 55.h),
          child: Text(AppString.otp,style: TextStyle(fontSize: 14.sp),),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 55.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              container(),
              container(),
              container(),
              container(),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 30.h),
          child: Text(AppString.Resend,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14.sp),),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 30.h),
          child: customebutton(text: AppString.veri,fontsize: 14.sp,),
        )
      ],
    ),
  ),
);
  }
  Widget container(){
    return Container(
      width: 53.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20.sp),
      ),
    );
  }
}
