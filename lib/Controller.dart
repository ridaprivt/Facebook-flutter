import 'package:get/get.dart';

class Controller extends GetxController {
  var myIndex = 0;

  void changeIndex(int index) {
    myIndex = index;
    update();
  }
}
