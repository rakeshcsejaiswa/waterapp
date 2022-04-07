import 'dart:convert';

import 'package:get/get.dart';
import 'package:waterapp/controllers/base_controller.dart';
import 'package:waterapp/models/products/ProductDetail.dart';
import 'package:waterapp/services/base_client.dart';

class ProductDetailController extends GetxController with BaseController {
  var status = 0.obs;
  List products = [].obs;
  @override
  void onInit() {
    super.onInit();
    getdata();
  }

  getdata() async {
    var response = await BaseClient.get("http://10.10.10.120:8080", "/range")
        .catchError(handleError);

    var json = jsonDecode(response);
    if (json["status"] == 1) {
      products = json["data"]["rows"];
      print(products[0]);
    }
  }
}
