import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/consts/app_sizes.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final String rout;
  CustomButton({Key? key, required this.label, required this.rout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 35),
            primary: AppColors.darkpurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.BUTTON_RADIUS))),
        onPressed: () => Get.toNamed(rout),
        child: Text(label.toUpperCase()));
  }
}
