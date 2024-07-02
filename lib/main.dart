import 'dart:convert';

import 'package:famlaika1/constants/bottom.dart';
import 'package:famlaika1/pages/Home3.dart';

import 'package:famlaika1/pages/addmember_view.dart';
import 'package:famlaika1/pages/famtree_view.dart';

import 'package:famlaika1/pages/home2.dart';
import 'package:famlaika1/pages/login_view.dart';
import 'package:famlaika1/pages/splash_view.dart';

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
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Login(),
          );
        }
    );
  }
}

