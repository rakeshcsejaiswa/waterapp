import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:waterapp/controllers/mainpage_binding.dart';
import 'package:waterapp/models/products/products.dart';
import 'package:waterapp/utils/styles.dart';
import 'package:waterapp/views/pages/authpage/authpage.dart';
import 'package:waterapp/views/pages/home/home.dart';
import 'package:waterapp/views/pages/mainpage.dart';
import 'package:waterapp/views/pages/products/product_details.dart';
import 'package:waterapp/views/pages/products/products_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Water king',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: MainPageBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => AuthPage(), binding: MainPageBinding()),
        GetPage(
            name: '/main', page: () => MainPage(), binding: MainPageBinding()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/product', page: () => ProductsPage()),
        GetPage(name: '/productdetails', page: () => ProductDetails()),
      ],
      // routes: {
      //   '/': (context) => AuthPage(),
      //   '/main': (context) => MainPage(),
      //   '/home': (context) => Home(),
      // },
    );
  }
}
