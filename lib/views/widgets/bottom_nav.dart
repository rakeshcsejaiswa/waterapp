import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/controllers/bottomnav_controller.dart';

class BottomNav extends StatelessWidget {
  BottomNav({Key? key}) : super(key: key);
  var bottomNavController = Get.put(BottomNavController());

  late int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.send_outlined), label: 'Refer'),
        ],
        currentIndex: bottomNavController.currentIndex.value,
        onTap: bottomNavController.onTab,
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: AppColors.app_color,
        backgroundColor: Colors.white70,
        type: BottomNavigationBarType.shifting,
        elevation: 15,
      ),
    );
  }
}
