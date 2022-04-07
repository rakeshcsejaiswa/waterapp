import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabControllers extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(
      iconMargin: EdgeInsets.all(2.0),
      icon: Icon(Icons.lock),
      text: 'Login',
    ),
    const Tab(
      iconMargin: EdgeInsets.all(2.0),
      icon: Icon(Icons.person_add),
      text: 'Signup',
    )
  ];
  late TabController tabController;
  var tabIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    tabController.dispose();
    super.onClose();
  }

  void togleTabIndex(index) {
    tabIndex = index;
  }
}
