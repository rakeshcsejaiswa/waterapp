import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:waterapp/views/pages/home/home.dart';
import 'package:waterapp/views/pages/notification/NotificationPage.dart';
import 'package:waterapp/views/pages/profile/profile_page.dart';
import 'package:waterapp/views/pages/referpage/refer_page.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;
  List screens = [Home(), NotificationPage(), ProfilePage(), ReferPage()];
  onTab(index) {
    currentIndex.value = index;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
