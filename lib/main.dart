import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:facebook/App.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(debugShowCheckedModeBanner: false, home: App());
    });
  }
}
