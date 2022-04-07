import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/controllers/bottomnav_controller.dart';
import 'package:waterapp/views/pages/authpage/login.dart';
import 'package:waterapp/views/pages/home/home.dart';
import 'package:waterapp/views/pages/notification/NotificationPage.dart';
import 'package:waterapp/views/widgets/bottom_nav.dart';
import 'package:waterapp/views/widgets/sidebar_drawer.dart';

import 'profile/profile_page.dart';
import 'referpage/refer_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  BottomNavController bottomNavController = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Obx(() => bottomNavController
            .screens[bottomNavController.currentIndex.value]),
        drawer: const SideBarDrawer(),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
