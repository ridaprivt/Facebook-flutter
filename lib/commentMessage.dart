import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class CommentMessage {
  String messageContent;
  String messageType;
  String messageTime;
  String image;
  CommentMessage(
      {required this.messageContent,
      required this.messageType,
      required this.messageTime,
      required this.image});
}
