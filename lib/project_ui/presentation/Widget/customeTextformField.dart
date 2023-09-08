import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField(
      {super.key,
      this.labelText,
      this.iconData,
      this.fontWeight,
      this.fontsize,
      this.colortext});

  String? labelText;
  IconData? iconData;
  FontWeight? fontWeight;
  Color ?colortext;
  double? fontsize;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(

        decoration: InputDecoration(
          hintMaxLines: 2,
          suffixIcon: Icon(iconData, size: 20.sp,),

          hintText: labelText,
            hintStyle: TextStyle(fontSize: fontsize,color: colortext),
        ),
      ),
    );
  }
}
