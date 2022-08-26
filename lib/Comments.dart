// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:facebook/commentMessage.dart';

class Comments extends StatelessWidget {
  List<CommentMessage> messages = [
    CommentMessage(
        messageContent: "Wait for another episode of amzing dialo",
        messageType: "Rida Arshad",
        messageTime: '1h',
        image: 'assets/images/pfp.jpeg'),
    CommentMessage(
        messageContent: "OH MY? Wait for another episode amzing ",
        messageType: "Alex Stone",
        messageTime: '3h',
        image: 'assets/images/cup.png'),
    CommentMessage(
        messageContent: "REALEASING WHEN? dino Wait for end.",
        messageType: "Stephan Hawking",
        messageTime: '8h',
        image: 'assets/images/dino.png'),
    CommentMessage(
        messageContent: "doing ok dino, Wait for another no donut",
        messageType: "Jake Brown",
        messageTime: '1w',
        image: 'assets/images/dino.png'),
    CommentMessage(
        messageContent: "Is smth wrong dino? another strive hard  ",
        messageType: "Eva White",
        messageTime: '1w',
        image: 'assets/images/dino.png'),
    CommentMessage(
        messageContent: "yes i guess dino dino, Waie, rain serop ",
        messageType: "Shelly Opa",
        messageTime: '3w',
        image: 'assets/images/dino.png'),
    CommentMessage(
        messageContent: "Are you sure? dino, Wait for dino blast max",
        messageType: "Cassie Rue",
        messageTime: '6w',
        image: 'assets/images/dino.png')
  ];
  @override
  Widget build(context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
            height: 100.h,
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Container(
                  height: 91.5.h,
                  child: ListView(
                    padding: EdgeInsets.only(top: 15),
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(20.sp),
                          child: Image.asset('assets/images/pfp.jpeg',
                              height: 6.h),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Rida Arshad',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.sp))),
                            SizedBox(height: 0.1.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '4 d',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                          color: Color.fromARGB(
                                              255, 122, 122, 122))),
                                ),
                                SizedBox(width: 1.5.w),
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 122, 122, 122),
                                  radius: 2,
                                ),
                                SizedBox(width: 1.5.w),
                                Icon(
                                  Icons.settings,
                                  color: Color.fromARGB(255, 122, 122, 122),
                                  size: 16.sp,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.more_horiz_outlined,
                                        color:
                                            Color.fromARGB(255, 122, 122, 122),
                                        size: 21.sp,
                                      ),
                                      SizedBox(width: 1.5.w),
                                      Icon(
                                        Icons.close,
                                        color:
                                            Color.fromARGB(255, 122, 122, 122),
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
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.sp))),
                      SizedBox(height: 0.8.h),
                      Image.asset('assets/images/dino.png'),
                      SizedBox(height: 0.8.h),
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
                                            color: Color.fromARGB(
                                                255, 114, 114, 114)))),
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
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
                                            color: Color.fromARGB(
                                                255, 114, 114, 114)))),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 1.5.h),
                                      ListTile(
                                        leading: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.sp),
                                          child: Image.asset(
                                              'assets/images/pfp.jpeg',
                                              height: 8.h),
                                        ),
                                        title: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 1.h),
                                              Text('Rida Arshad',
                                                  style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18.sp))),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
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
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      190,
                                                                      189,
                                                                      189)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.sp),
                                                          color: Colors.white),
                                                      child: Row(
                                                        children: [
                                                          Text(' Feed',
                                                              style: GoogleFonts.roboto(
                                                                  textStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.sp,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          109,
                                                                          109,
                                                                          109)))),
                                                          Icon(
                                                              Icons
                                                                  .arrow_drop_down,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      109,
                                                                      109,
                                                                      109))
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
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      190,
                                                                      189,
                                                                      189)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.sp),
                                                          color: Colors.white),
                                                      child: Row(
                                                        children: [
                                                          Text(' Friends',
                                                              style: GoogleFonts.roboto(
                                                                  textStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.sp,
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          109,
                                                                          109,
                                                                          109)))),
                                                          Icon(
                                                              Icons
                                                                  .arrow_drop_down,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      109,
                                                                      109,
                                                                      109))
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
                                                        CrossAxisAlignment
                                                            .center,
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
                                              color: Color.fromARGB(
                                                  255, 41, 118, 251),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.sp),
                                              ),
                                              child: Text(
                                                'Share Now ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                          SizedBox(width: 3.w),
                                        ],
                                      ),
                                      Container(
                                          child: Divider(
                                        color:
                                            Color.fromARGB(255, 186, 186, 186),
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                            color: Color.fromARGB(
                                                255, 114, 114, 114)))),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Divider(
                            color: Color.fromARGB(255, 225, 225, 225),
                            thickness: 3.5.sp,
                            height: 0.5.h,
                          )),
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            Row(
                              children: [
                                SizedBox(width: 11.5.w),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5.w, color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(20.sp)),
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
                                      border: Border.all(
                                          width: 0.5.w, color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(20.sp)),
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
                                      border: Border.all(
                                          width: 0.5.w, color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(20.sp)),
                                  child: Image.asset(
                                    'assets/images/angry.png',
                                    height: 2.5.h,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          Text(' 24.3k',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.sp,
                                      color: Colors.black))),
                          Spacer(),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Divider(
                            color: Color.fromARGB(255, 225, 225, 225),
                            thickness: 3.5.sp,
                            height: 2.h,
                          )),
                      Text('  284 shares',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                  color: Colors.black))),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          SizedBox(width: 3.w),
                          Text('Most Relevant',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp,
                                      color: Colors.black))),
                          SizedBox(width: 0.1.w),
                          Icon(Icons.keyboard_arrow_down, size: 21.sp),
                        ],
                      ),
                      ListView.builder(
                          itemCount: messages.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(
                                  left: 14, right: 14, top: 7, bottom: 5),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: 0.5.h),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.sp),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                    messages[index].image,
                                                    height: 5.h),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 2.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Color.fromARGB(
                                                    255, 237, 237, 237)),
                                            padding: EdgeInsets.all(12),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  messages[index].messageType,
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 0.5.h),
                                                Text(
                                                  messages[index]
                                                      .messageContent,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 0.3.h),
                                          Row(children: [
                                            SizedBox(width: 3.w),
                                            Text(
                                              messages[index].messageTime,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 117, 117, 117)),
                                            ),
                                            SizedBox(width: 3.w),
                                            Text(
                                              'Like',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      255, 117, 117, 117)),
                                            ),
                                            SizedBox(width: 3.w),
                                            Text(
                                              'Reply',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      255, 117, 117, 117)),
                                            ),
                                            SizedBox(width: 30.w),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('22 ',
                                                    style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    117,
                                                                    117,
                                                                    117)))),
                                                Stack(children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(width: 6.5.w),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                width: 0.5.w,
                                                                color: Colors
                                                                    .white),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.sp)),
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
                                                            border: Border.all(
                                                                width: 0.5.w,
                                                                color: Colors
                                                                    .white),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.sp)),
                                                        child: Image.asset(
                                                          'assets/images/haha.png',
                                                          height: 2.5.h,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ]),
                                              ],
                                            ),
                                          ]),
                                          SizedBox(height: 1.h),
                                        ],
                                      ),
                                    ],
                                  )),
                            );
                          })
                    ],
                  ),
                ),
                Container(
                  width: 100.h,
                  height: 8.5.h,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      Container(
                          height: 6.h,
                          width: 83.w,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 1),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(
                                  color: Color.fromARGB(255, 217, 217, 217),
                                  width: 0.3.w),
                              borderRadius: BorderRadius.circular(25)),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            decoration: InputDecoration(
                                hintText: 'Write a comment...',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.sp),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(0, 44, 44, 44))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color.fromARGB(0, 44, 44, 44),
                                )),
                                suffixIcon: Container(
                                  width: 30.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.face_retouching_natural_outlined,
                                        color: Colors.grey,
                                        size: 24.sp,
                                      ),
                                      SizedBox(width: 0.8.w),
                                      Icon(
                                        Icons.gif_box_outlined,
                                        color: Colors.grey,
                                        size: 24.sp,
                                      ),
                                      SizedBox(width: 0.8.w),
                                      Icon(
                                        Icons.sentiment_satisfied,
                                        color: Colors.grey,
                                        size: 24.sp,
                                      ),
                                    ],
                                  ),
                                )),
                          )),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
