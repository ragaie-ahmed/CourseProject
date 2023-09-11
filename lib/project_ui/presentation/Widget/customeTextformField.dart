import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField(
      {super.key,
      this.labelText,
      this.iconData,
      this.fontWeight,
      this.fontsize,
      this.colortext,
        this.coloricon,
      this.obscure = false});

  String? labelText;
  IconData? iconData;
  FontWeight? fontWeight;
  Color? colortext;
  Color? coloricon;
  double? fontsize;
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintMaxLines: 1,
          suffixIcon: Icon(
            iconData,
            color:coloricon ,
            size: 20.sp,
          ),
          hintText: labelText,
          hintStyle: TextStyle(fontSize: fontsize, color: colortext),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.sp),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.sp),
              borderSide: BorderSide(color: Colors.grey.shade300)),

        ),
      ),
    );
  }
}
