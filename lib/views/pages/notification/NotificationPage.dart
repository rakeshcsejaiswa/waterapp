import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_strings.dart';
import 'package:waterapp/controllers/bottomnav_controller.dart';
import 'package:waterapp/controllers/notification/notification_controller.dart';
import 'package:waterapp/views/pages/home/home.dart';
import 'package:waterapp/views/pages/mainpage.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);
  NotificationController notificationController =
      Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            child: const Icon(Icons.menu),
            onTap: () => {Scaffold.of(context).openDrawer()}),
        title: const Text(AppStrings.NOTIFICSTION),
      ),
      body: Column(
        children: [
          notifications(
              date: '2 april',
              title: "Order No S03650 conformed ",
              desc: 'Dear rk your order is being delivered by Madan sunuwar'),
          notifications(
              date: '2 april',
              title: "Order No S03650 conformed ",
              desc: 'Dear rk your order is being delivered by Madan sunuwar',
              image: 'assets/images/logo.jpg')
        ],
      ),
    );
  }

  notifications({var date, var title, var desc, var image}) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.deepPurple[900],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(date,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800)),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: (image == null)
                        ? Text("")
                        : Image.asset(
                            image,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
