import 'package:courseproject/core/app/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customebutton extends StatelessWidget {
   customebutton({super.key,required this.text,this.fontsize,this.fontWeight,this.onpressed});
String ?text;
double ?fontsize;
FontWeight ?fontWeight;
   Function()?  onpressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 48.h,
        width: 230.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.w),
            color: AppColor.secondrycolor
        ),
        child: TextButton(onPressed: onpressed, child: Text(text!,style: TextStyle(fontSize:fontsize?? 20,color: Colors.white,fontWeight:fontWeight?? FontWeight.w600
        ),),));
  }
}
