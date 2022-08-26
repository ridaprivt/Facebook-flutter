// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unnecessary_new, avoid_unnecessary_containers

import 'package:facebook/Comments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:facebook/tabController.dart';
import 'package:facebook/Controller.dart';

class Home extends StatelessWidget {
  Controller controller = Controller();
  @override
  Widget build(context) {
    final myTabs tabs = Get.put(myTabs());

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 30),
        children: [
          Row(children: [
            SizedBox(width: 3.w),
            Text('facebook',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp))),
            Spacer(),
            Container(
                height: 5.5.h,
                width: 11.w,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Icon(Icons.search, size: 30)),
            SizedBox(width: 2.5.w),
            Container(
                height: 5.5.h,
                width: 11.w,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Icon(Icons.maps_ugc_rounded, size: 30)),
            SizedBox(width: 3.w)
          ]),
          SizedBox(height: 1.h),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20.sp),
              child: Image.asset('assets/images/pfp.jpeg', height: 6.h),
            ),
            title: Text('Whats on your mind?',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 18.sp))),
          ),
          Container(
              child: Divider(
            color: Color.fromARGB(255, 186, 186, 186),
            height: 36,
            thickness: 12.sp,
          )),
          Container(
            height: 50,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              controller: tabs.controller,
              indicator: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.blueAccent, width: 7.sp))),
              labelColor: Color.fromARGB(255, 52, 127, 255),
              unselectedLabelColor: Color.fromARGB(255, 100, 100, 100),
              unselectedLabelStyle:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              tabs: [
                Tab(
                  text: 'Stories',
                ),
                Tab(text: 'Reels'),
              ],
            ),
          ),
          SizedBox(
            height: 33.h,
            width: 100.w,
            child: TabBarView(controller: tabs.controller, children: [
              Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        width: 35.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 129, 214, 132),
                                  Color.fromARGB(255, 66, 163, 243)
                                ])),
                        child: Column(
                          children: [
                            SizedBox(height: 8.h),
                            Container(
                              height: 8.h,
                              width: 16.w,
                              child: Icon(
                                Icons.music_note,
                                size: 26.sp,
                              ),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 77, 77, 77)
                                          .withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.sp)),
                            ),
                            SizedBox(height: 1.5.h),
                            Text('Music',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        color: Colors.white)))
                          ],
                        )),
                    SizedBox(width: 2.5.w),
                    Container(
                        width: 35.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.3.w,
                                color: Color.fromARGB(255, 225, 225, 225)),
                            borderRadius: BorderRadius.circular(15.sp),
                            color: Color.fromARGB(255, 246, 246, 246)),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.sp),
                                        topRight: Radius.circular(15.sp)),
                                    child:
                                        Image.asset('assets/images/cat.png')),
                                SizedBox(height: 3.5.h),
                                Text(
                                  'Create \nStory',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 17.5.h),
                                Row(
                                  children: [
                                    SizedBox(width: 11.w),
                                    Container(
                                      height: 6.5.h,
                                      width: 13.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 246, 246, 246),
                                              width: 1.w),
                                          color: Colors.blueAccent,
                                          borderRadius:
                                              BorderRadius.circular(25.sp)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 23.sp,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                    SizedBox(width: 2.5.w),
                    Container(
                      width: 35.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                          ),
                          const BoxShadow(
                            color: Colors.grey,
                            spreadRadius: -12.0,
                            blurRadius: 12.0,
                          ),
                        ],
                        border: Border.all(
                            width: 0.3.w,
                            color: Color.fromARGB(255, 225, 225, 225)),
                        borderRadius: BorderRadius.circular(15.sp),
                        image: new DecorationImage(
                          image:
                              new ExactAssetImage('assets/images/flower.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.sp),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 137, 137, 137)
                                        .withOpacity(0.3),
                                    blurRadius: 3,
                                    spreadRadius: 0,
                                  )
                                ]),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 6.5.h,
                                  width: 13.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 34, 115, 255),
                                          width: 1.w),
                                      borderRadius:
                                          BorderRadius.circular(25.sp)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.sp),
                                    child: Image.asset(
                                      'assets/images/dino.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Container(
                                  padding: EdgeInsets.only(left: 11),
                                  child: Text(
                                    'Express Tribune',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        width: 35.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 245, 67, 126),
                                  Color.fromARGB(255, 247, 181, 96)
                                ])),
                        child: Column(
                          children: [
                            SizedBox(height: 11.h),
                            Container(
                              height: 8.h,
                              width: 16.w,
                              child: Icon(
                                Icons.movie_filter_outlined,
                                color: Color.fromARGB(255, 245, 67, 126),
                                size: 26.sp,
                              ),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 77, 77, 77)
                                          .withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.sp)),
                            ),
                            SizedBox(height: 7.5.h),
                            Text('Create reel',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17.sp,
                                        color: Colors.white)))
                          ],
                        )),
                    SizedBox(width: 2.5.w),
                    Container(
                      width: 35.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.3.w,
                            color: Color.fromARGB(255, 225, 225, 225)),
                        borderRadius: BorderRadius.circular(15.sp),
                        // image: new DecorationImage(
                        //   image:
                        //       new ExactAssetImage('assets/images/flower.png'),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    SizedBox(width: 2.5.w),
                    Container(
                      width: 35.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.3.w,
                            color: Color.fromARGB(255, 225, 225, 225)),
                        borderRadius: BorderRadius.circular(15.sp),
                        // image: new DecorationImage(
                        //   image:
                        //       new ExactAssetImage('assets/images/flower.png'),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Container(
              child: Divider(
            color: Color.fromARGB(255, 186, 186, 186),
            thickness: 12.sp,
          )),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20.sp),
              child: Image.asset('assets/images/pfp.jpeg', height: 6.h),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Rida Arshad',
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.sp))),
                SizedBox(height: 0.1.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '4 d',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              color: Color.fromARGB(255, 122, 122, 122))),
                    ),
                    SizedBox(width: 1.5.w),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 122, 122, 122),
                      radius: 2,
                    ),
                    SizedBox(width: 1.5.w),
                    Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 122, 122, 122),
                      size: 15.sp,
                    )
                  ],
                )
              ],
            ),
            trailing: SizedBox(
              width: 18.w,
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 0.7.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.more_horiz_outlined,
                            color: Color.fromARGB(255, 122, 122, 122),
                            size: 21.sp,
                          ),
                          SizedBox(width: 1.5.w),
                          Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 122, 122, 122),
                            size: 21.sp,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 0.5.h),
          Text('   Heres to the blues we need in life.',
              style: GoogleFonts.roboto(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp))),
          SizedBox(height: 0.8.h),
          Image.asset('assets/images/dino.png'),
          SizedBox(height: 0.8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Row(
                  children: [
                    SizedBox(width: 11.5.w),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5.w, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.sp)),
                      child: Image.asset(
                        'assets/images/haha.png',
                        height: 2.5.h,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 6.5.w),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5.w, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.sp)),
                      child: Image.asset(
                        'assets/images/love.png',
                        height: 2.5.h,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 1.5.w),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5.w, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.sp)),
                      child: Image.asset(
                        'assets/images/angry.png',
                        height: 2.5.h,
                      ),
                    ),
                  ],
                ),
              ]),
              Text(' 24',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color.fromARGB(255, 118, 118, 118)))),
              Spacer(),
              Text('39 Comments',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color.fromARGB(255, 118, 118, 118)))),
              SizedBox(width: 1.5.w),
              Text('56 Shares',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color.fromARGB(255, 118, 118, 118)))),
              SizedBox(width: 2.5.w),
            ],
          ),
          Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Divider(
                color: Color.fromARGB(255, 186, 186, 186),
                thickness: 3.5.sp,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.thumb_up_alt_outlined,
                        color: Color.fromARGB(255, 114, 114, 114)),
                    SizedBox(
                      width: 1.3.w,
                    ),
                    Text('Like',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp,
                                color: Color.fromARGB(255, 114, 114, 114)))),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(Comments());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat_bubble_outline,
                        color: Color.fromARGB(255, 114, 114, 114)),
                    SizedBox(
                      width: 1.3.w,
                    ),
                    Text('Comment',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp,
                                color: Color.fromARGB(255, 114, 114, 114)))),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.sp),
                          topRight: Radius.circular(20.sp),
                        ),
                        color: Colors.white,
                      ),
                      height: 50.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 1.5.h),
                          ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(30.sp),
                              child: Image.asset('assets/images/pfp.jpeg',
                                  height: 8.h),
                            ),
                            title: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 1.h),
                                  Text('Rida Arshad',
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp))),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      MaterialButton(
                                        padding: EdgeInsets.all(0),
                                        minWidth: 1.w,
                                        onPressed: () {},
                                        child: Container(
                                          height: 3.h,
                                          width: 14.w,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 0.3.w,
                                                  color: Color.fromARGB(
                                                      255, 190, 189, 189)),
                                              borderRadius:
                                                  BorderRadius.circular(10.sp),
                                              color: Colors.white),
                                          child: Row(
                                            children: [
                                              Text(' Feed',
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.sp,
                                                          color: Color.fromARGB(
                                                              255,
                                                              109,
                                                              109,
                                                              109)))),
                                              Icon(Icons.arrow_drop_down,
                                                  color: Color.fromARGB(
                                                      255, 109, 109, 109))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 1.3.w),
                                      MaterialButton(
                                        padding: EdgeInsets.all(0),
                                        minWidth: 1,
                                        onPressed: () {},
                                        child: Container(
                                          height: 3.h,
                                          width: 17.w,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 0.3.w,
                                                  color: Color.fromARGB(
                                                      255, 190, 189, 189)),
                                              borderRadius:
                                                  BorderRadius.circular(10.sp),
                                              color: Colors.white),
                                          child: Row(
                                            children: [
                                              Text(' Friends',
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.sp,
                                                          color: Color.fromARGB(
                                                              255,
                                                              109,
                                                              109,
                                                              109)))),
                                              Icon(Icons.arrow_drop_down,
                                                  color: Color.fromARGB(
                                                      255, 109, 109, 109))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            trailing: SizedBox(
                              width: 10.w,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(height: 0.7.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.open_in_full,
                                            color: Color.fromARGB(
                                                255, 122, 122, 122),
                                            size: 21.sp,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text('   Say something about this...',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.sp,
                                      color: Colors.grey))),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              Spacer(),
                              FlatButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(255, 41, 118, 251),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child: Text(
                                    'Share Now ',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              SizedBox(width: 3.w),
                            ],
                          ),
                          Container(
                              child: Divider(
                            color: Color.fromARGB(255, 186, 186, 186),
                            thickness: 3.5.sp,
                          )),
                          SizedBox(height: 1.h),
                          Row(
                            children: [
                              SizedBox(width: 2.w),
                              Icon(
                                Icons.add_circle_outline,
                                size: 22.sp,
                              ),
                              SizedBox(width: 1.5.w),
                              Text('Share to your Story',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17.5.sp))),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              SizedBox(width: 2.w),
                              Icon(
                                Icons.people,
                                size: 22.sp,
                              ),
                              SizedBox(width: 1.5.w),
                              Text('Share to a Community',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17.5.sp))),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              SizedBox(width: 2.w),
                              Icon(
                                Icons.maps_ugc_rounded,
                                size: 22.sp,
                              ),
                              SizedBox(width: 1.5.w),
                              Text('Send in Messanger',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17.5.sp))),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              SizedBox(width: 2.w),
                              Icon(
                                Icons.file_open_outlined,
                                size: 22.sp,
                              ),
                              SizedBox(width: 1.5.w),
                              Text('More Options...',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17.5.sp))),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shortcut_outlined,
                        color: Color.fromARGB(255, 114, 114, 114)),
                    SizedBox(
                      width: 1.3.w,
                    ),
                    Text('Share',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp,
                                color: Color.fromARGB(255, 114, 114, 114)))),
                  ],
                ),
              )
            ],
          ),
          Container(
              child: Divider(
            color: Color.fromARGB(255, 186, 186, 186),
            thickness: 12.sp,
          )),
        ],
      ),
    );
  }
}
