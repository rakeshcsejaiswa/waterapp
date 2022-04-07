import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/controllers/mytab_controllers.dart';
import 'package:waterapp/views/pages/authpage/login.dart';
import 'package:waterapp/views/pages/authpage/signup.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final MyTabControllers _tabControllers = Get.put(MyTabControllers());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabControllers.myTabs.length,
        child: Scaffold(
          appBar: AppBar(
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(18),
                  child:
                      Container(color: AppColors.app_color, child: _tabBar()))),
          body:
              TabBarView(controller: _tabControllers.tabController, children: [
            const Center(
              child: Login(),
            ),
            Center(
              child: SignUp(),
            )
          ]),
        ));
  }

  Widget _tabBar() {
    return TabBar(
        indicatorColor: Colors.white,
        tabs: _tabControllers.myTabs,
        // onTap: (value) {
        //   print(_tabControllers.tabController.index);
        // },
        controller: _tabControllers.tabController);
  }
}
