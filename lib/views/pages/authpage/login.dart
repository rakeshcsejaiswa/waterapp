import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_sizes.dart';
import 'package:waterapp/controllers/login/login_controller.dart';
import 'package:waterapp/controllers/mytab_controllers.dart';
import 'package:waterapp/views/pages/mainpage.dart';
import 'package:waterapp/views/widgets/custom_button.dart';
import 'package:waterapp/views/widgets/custom_testfield.dart';
import 'package:waterapp/views/widgets/custom_textformfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _mobileController = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  MyTabControllers myTabControllers = Get.put(MyTabControllers());
  LoginController loginController = LoginController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppSizes.PAGE_PADDING),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpg'),
            const SizedBox(
              height: AppSizes.MARGIN_VERTICAL,
            ),
            CustomTextFormField(
              label: 'Mobile Number',
              keyBoarType: TextInputType.number,
              textEditingController: _mobileController,
            ),
            const SizedBox(
              height: AppSizes.MARGIN_VERTICAL,
            ),
            CustomTextFormField(
              label: 'Password',
              obsecure: loginController.obsecure.value,
              textEditingController: _password,
              suffix: InkWell(
                onTap: () {
                  loginController.toggleObsecure();
                  setState(() {});
                },
                child: loginController.obsecure.value
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            ),
            const SizedBox(
              height: AppSizes.MARGIN_VERTICAL,
            ),
            CustomButton(
              label: 'Login',
              rout: '/main',
            ),
            const SizedBox(
              height: AppSizes.MARGIN_VERTICAL,
            ),
            InkWell(
              onTap: () {},
              child: const Text('Forgot Password'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have a Account?"),
                TextButton(
                    onPressed: () {
                      myTabControllers.tabController.animateTo(
                          (myTabControllers.tabController.index + 1) % 2);
                    },
                    child: const Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
