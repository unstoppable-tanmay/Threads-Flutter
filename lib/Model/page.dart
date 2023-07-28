import 'package:get/get.dart';

int selectedPage = 0;

class pageGet extends GetxController {
  var pageCount = 0.obs;

  void setPage(int val) {
    pageCount.value = val;
  }
  
}
