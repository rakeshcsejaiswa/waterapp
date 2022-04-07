import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/controllers/product/product_detail_controller.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);
  ProductDetailController _productController =
      Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
