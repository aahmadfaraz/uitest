import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/home/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      builder: (ctx, child) {
        ScreenUtil.init(ctx, designSize: const Size(428, 945), minTextAdapt: true, splitScreenMode: true);
        return Theme(
          data: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Pallete.black),
            useMaterial3: true,
          ),
          child: child!,
        );
      },
      home: const CustomBottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
