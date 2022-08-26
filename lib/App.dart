// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:facebook/Controller.dart';
import 'package:facebook/Home.dart';

class App extends StatelessWidget {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
        // specify type as Controller
        init: Controller(), // intialize with the Controller
        builder: (Controller controller) => Scaffold(
            body: Container(
                child: IndexedStack(
              index: controller.myIndex,
              children: [
                Home(),
                Watch(),
                Marketplace(),
                Feeds(),
                Notifications(),
                Menu(),
              ],
            )),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 7.5.h,
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 1.w,
                      onPressed: () {
                        controller.changeIndex(0);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: controller.myIndex == 0
                                        ? Colors.blueAccent
                                        : Color.fromARGB(0, 0, 0, 0),
                                    width: 5))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 4.h,
                              color: controller.myIndex == 0
                                  ? Colors.blueAccent
                                  : Color.fromARGB(255, 108, 108, 108),
                            ),
                            Text('Home',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: controller.myIndex == 0
                                      ? Colors.blueAccent
                                      : Color.fromARGB(255, 108, 108, 108),
                                )))
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 1.w,
                      onPressed: () {
                        controller.changeIndex(1);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: controller.myIndex == 1
                                        ? Colors.blueAccent
                                        : Color.fromARGB(0, 0, 0, 0),
                                    width: 5))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.ondemand_video,
                              size: 4.h,
                              color: controller.myIndex == 1
                                  ? Colors.blueAccent
                                  : Color.fromARGB(255, 108, 108, 108),
                            ),
                            Text('Watch',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: controller.myIndex == 1
                                      ? Colors.blueAccent
                                      : Color.fromARGB(255, 108, 108, 108),
                                )))
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 1,
                      onPressed: () {
                        controller.changeIndex(2);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: controller.myIndex == 2
                                        ? Colors.blueAccent
                                        : Color.fromARGB(0, 0, 0, 0),
                                    width: 5))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.store_outlined,
                              size: 4.h,
                              color: controller.myIndex == 2
                                  ? Colors.blueAccent
                                  : Color.fromARGB(255, 108, 108, 108),
                            ),
                            Text('Marketplace',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: controller.myIndex == 2
                                      ? Colors.blueAccent
                                      : Color.fromARGB(255, 108, 108, 108),
                                )))
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 1,
                      onPressed: () {
                        controller.changeIndex(3);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: controller.myIndex == 3
                                        ? Colors.blueAccent
                                        : Color.fromARGB(0, 0, 0, 0),
                                    width: 5))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.feed_outlined,
                              size: 4.h,
                              color: controller.myIndex == 3
                                  ? Colors.blueAccent
                                  : Color.fromARGB(255, 108, 108, 108),
                            ),
                            Text('Feeds',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: controller.myIndex == 3
                                      ? Colors.blueAccent
                                      : Color.fromARGB(255, 108, 108, 108),
                                )))
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 1,
                      onPressed: () {
                        controller.changeIndex(4);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: controller.myIndex == 4
                                        ? Colors.blueAccent
                                        : Color.fromARGB(0, 0, 0, 0),
                                    width: 5))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 4.h,
                              color: controller.myIndex == 4
                                  ? Colors.blueAccent
                                  : Color.fromARGB(255, 108, 108, 108),
                            ),
                            Text('Notifications',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: controller.myIndex == 4
                                      ? Colors.blueAccent
                                      : Color.fromARGB(255, 108, 108, 108),
                                )))
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      minWidth: 1,
                      onPressed: () {
                        controller.changeIndex(5);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: controller.myIndex == 5
                                        ? Colors.blueAccent
                                        : Color.fromARGB(0, 0, 0, 0),
                                    width: 5))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.density_medium,
                              size: 4.h,
                              color: controller.myIndex == 5
                                  ? Colors.blueAccent
                                  : Color.fromARGB(255, 108, 108, 108),
                            ),
                            Text('Menu',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: controller.myIndex == 5
                                      ? Colors.blueAccent
                                      : Color.fromARGB(255, 108, 108, 108),
                                )))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}

class Watch extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold();
  }
}

class Marketplace extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold();
  }
}

class Feeds extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold();
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold();
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold();
  }
}
