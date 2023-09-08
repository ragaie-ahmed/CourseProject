import 'package:courseproject/core/app/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Padding(
          padding:  EdgeInsets.symmetric(vertical: 104.38.h,horizontal: 138.89.w),
          child: Image.asset(AppImages.dm),
        )
      ),
    );
  }
}
