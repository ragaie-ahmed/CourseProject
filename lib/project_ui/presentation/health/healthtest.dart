import 'package:courseproject/core/app/app_String.dart';
import 'package:custom_rounded_rectangle_border/custom_rounded_rectangle_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class healthtest extends StatelessWidget {
  const healthtest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120.w),
                  child: Text(
                    AppString.healthtest,
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
                Icon(Icons.menu)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppString.hello,
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppString.letsgo,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.h),
              child: Text(AppString.age),
            ),
            rowcounter(),
          ],
        ),
      ),
    );
  }

  Widget rowcounter() {
    return Padding(
      padding:  EdgeInsets.all(40.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: 26.w,
              height: 26.h,

              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.sp)),
              child: FloatingActionButton(
                focusColor: Colors.blue,
                backgroundColor: Colors.white,
                onPressed: () {},
                child: Center(
                  child: Icon(
                    Icons.minimize,
                    size: 16.sp,
                  ),
                ),
              )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),

            ),
            child: Text("50"),
          ),
          Container(
              width: 26.w,
              height: 26.h,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.sp)),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 16.sp,
                ),
              )),
        ],
      ),
    );
  }
}
