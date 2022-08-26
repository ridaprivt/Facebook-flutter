import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myTabs extends GetxController with SingleGetTickerProviderMixin {
  late TabController controller;

  void onInit() {
    controller = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
