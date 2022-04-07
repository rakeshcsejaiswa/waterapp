import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  //show error dialog
  static void showErrorDialog(
      {String title = 'Error', String description = 'Something went wront'}) {
    Get.dialog(Dialog(
      child: Column(
        children: [
          Text(
            title, //check null value also
            style: Get.textTheme.headline4,
          ),
          Text(
            description, //check null value also
            style: Get.textTheme.headline4,
          ),
          ElevatedButton(
              onPressed: () {
                if (Get.isDialogOpen ??
                    false) // this means incase a null is returned use false
                  Get.back();
              },
              child: Text('Okey'))
        ],
      ),
    ));
  }
  //show toast
  //show snackbar
  //show loading
  //hide loading

}
