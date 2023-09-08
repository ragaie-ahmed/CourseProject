import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_fonts.dart';
import 'package:courseproject/core/app/app_images.dart';
import 'package:courseproject/project_ui/presentation/Widget/customeTextformField.dart';
import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup1 extends StatelessWidget {
  const Signup1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:47.h,left:30.w,right: 30.w ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                      return Navigator.pop(context);
                    },child: Icon(Icons.arrow_back_ios_new_sharp)),
                    SizedBox(
                      width: 100.w,
                    ),
                    Text(
                      AppString.signUp,
                      style: TextStyle(
                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Row(
                    children: [
                      Text(
                        AppString.firstname,
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text(
                        AppString.lastname,
                        style: TextStyle(fontSize: 16.sp),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomeTextFormField(
                        labelText: AppString.enterthefirstname,
                        fontsize: 14.sp,
                      )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                          child: CustomeTextFormField(
                        labelText: AppString.EnterLastName,
                        fontsize: 14.sp,
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppString.username,
                        style: TextStyle(
                            fontSize: 16.sp, fontFamily: AppFonts.Poppins),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: CustomeTextFormField(
                    labelText: AppString.enterUsername,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppString.email,
                        style: TextStyle(
                            fontSize: 16.sp, fontFamily: AppFonts.Poppins),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: CustomeTextFormField(
                    labelText: AppString.yourName,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 23.h),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppString.password,
                        style: TextStyle(
                            fontSize: 16.sp, fontFamily: AppFonts.Poppins),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: CustomeTextFormField(
                    labelText: AppString.yourpassword,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppString.conpassword,
                        style: TextStyle(
                            fontSize: 16.sp, fontFamily: AppFonts.Poppins),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: CustomeTextFormField(
                    labelText: AppString.conyoupassword,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppString.phoneNumber,
                        style: TextStyle(fontSize: 16.sp),
                      )),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CustomeTextFormField(
                          labelText: "+912",
                          fontsize: 12.sp,
                          iconData: Icons.keyboard_arrow_down_outlined,
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(flex: 3, child: CustomeTextFormField())
                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 7.h),
                  child: Stack(
                    children: [
                      Image.asset(AppImages.group),
                      Padding(
                        padding:  EdgeInsets.only(top: 45.h,left: 50.w),
                        child: customebutton(text: "Continue"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
