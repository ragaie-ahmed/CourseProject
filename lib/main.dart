import 'package:courseproject/project_ui/presentation/auth/Done.dart';
import 'package:courseproject/project_ui/presentation/auth/SIgnUp.dart';
import 'package:courseproject/project_ui/presentation/auth/SignIn.dart';
import 'package:courseproject/project_ui/presentation/auth/verify.dart';
import 'package:courseproject/project_ui/presentation/health/health2.dart';
import 'package:courseproject/project_ui/presentation/health/health3.dart';
import 'package:courseproject/project_ui/presentation/health/health4.dart';
import 'package:courseproject/project_ui/presentation/health/health5.dart';
import 'package:courseproject/project_ui/presentation/health/healthtest.dart';
import 'package:courseproject/project_ui/presentation/onboarding/onboarding1.dart';
import 'package:courseproject/tv/domain/entity/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(375, 812),
      builder: (_, child) =>
          MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Health5(

              ),
          ),

    );
  }
}


