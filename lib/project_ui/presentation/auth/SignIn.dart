import 'package:courseproject/core/app/app_String.dart';
import 'package:courseproject/core/app/app_fonts.dart';
import 'package:courseproject/core/app/app_images.dart';
import 'package:courseproject/core/app/appcolor.dart';
import 'package:courseproject/project_ui/presentation/Widget/customeTextformField.dart';
import 'package:courseproject/project_ui/presentation/Widget/customebutton.dart';
import 'package:courseproject/project_ui/presentation/auth/SIgnUp.dart';
import 'package:courseproject/project_ui/presentation/auth/forgetpassword.dart';
import 'package:courseproject/project_ui/presentation/auth/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 47.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppString.signIn,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.Poppins,
                          fontSize: 20.sp),
                    ),
                  ),
                ),
                Image.asset(
                  AppImages.doctors,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 28.h,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      AppString.phoneNumber,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: AppFonts.Poppins,
                          fontWeight: FontWeight.w400),
                    )),
                SizedBox(
                  height: 15.h,
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
                SizedBox(
                  height: 20.h,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      AppString.password,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: AppFonts.Poppins),
                    )),
                SizedBox(
                  height: 16.h,
                ),
                CustomeTextFormField(
                    labelText: AppString.enterPassword,
                    fontWeight: FontWeight.w400),
                Padding(
                  padding: EdgeInsets.only(right: 10.w, top: 7.h),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Reset(context);

                      },
                      child: Text(
                        AppString.forget,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: AppFonts.Poppins,
                            color: AppColor.secondrycolor,
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: GestureDetector(
                    onTap: () {
                      dialog(context);
                    },
                    child: customebutton(
                        text: AppString.login,
                        fontsize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.dont,
                      ),
                      Text(
                        AppString.signUp,
                        style: TextStyle(
                            color: AppColor.secondrycolor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> ForgetPassword(BuildContext context) {
    return showModalBottomSheet<void>(
      elevation: 0,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80.h), topRight: Radius.circular(80.h))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 375.w,
          height: 388.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Text(
                    AppString.forgetpassword,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Text(AppString.showbottom),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, left: 40.w),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(AppString.phoneNumber)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.h),
                  child: Row(
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
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: customebutton(text: AppString.Submit, fontsize: 14.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Future<void> Reset(BuildContext context) {
    return showModalBottomSheet<void>(
      elevation: 0,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80.h), topRight: Radius.circular(80.h))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 375.w,
          height: 388.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Text(
                    AppString.digit4,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Text(AppString.fourdigit),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 40.h,right: 40.h,top: 25.h),
                  child:OtpTextField(


                    borderRadius: BorderRadius.circular(12.sp),
                    borderWidth: 20.sp,
                   focusedBorderColor: Colors.grey,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    numberOfFields: 4,
                    fillColor: Colors.grey,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35.h),
                  child: Text(AppString.resend,style: TextStyle(fontStyle: FontStyle.italic),),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: customebutton(text: AppString.Continue, fontsize: 14.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Future<void> Resetpassword(BuildContext context) {
    return showModalBottomSheet<void>(
      elevation: 0,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80.h), topRight: Radius.circular(80.h))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 375.w,
          height: 448.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Text(
                    AppString.resetPassword,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.h,left: 25.w),
                  child: Text(AppString.newPassword),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, left: 40.w),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(AppString.password)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.h,right: 40.w),
                  child: CustomeTextFormField(obscure: true, iconData: Icons.remove_red_eye_outlined),
                ),
                Padding(
                  padding: EdgeInsets.only( top: 15.h,left: 40.w),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(AppString.conpassword)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.h,right: 40.w),
                  child: CustomeTextFormField(obscure: true,iconData: Icons.remove_red_eye),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: customebutton(text: AppString.resetPassword, fontsize: 14.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> dialog(BuildContext context) {
    return showAdaptiveDialog(

      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
shape: BoxShape.circle            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                AlertDialog(
                  title: Padding(
                    padding:  EdgeInsets.only(left: 50.w),
                    child: const Text(AppString.congratulation),
                  ),
                  content: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 55.w),
                        child: Text(AppString.resetPasswordsuccess,style: TextStyle(fontSize: 14.sp),),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 25.w,right: 25.w,top: 25.h),
                        child: Image.asset(AppImages.scan),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:45.h),
                        child: customebutton(text: AppString.done,fontsize: 14.sp),
                      )
                    ],
                  ),



                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

