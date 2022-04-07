import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_sizes.dart';
import 'package:waterapp/controllers/mytab_controllers.dart';
import 'package:waterapp/controllers/signup/signup_controller.dart';
import 'package:waterapp/views/pages/authpage/login.dart';
import 'package:waterapp/views/pages/mainpage.dart';
import 'package:waterapp/views/widgets/custom_button.dart';
import 'package:waterapp/views/widgets/custom_dropdown.dart';
import 'package:waterapp/views/widgets/custom_testfield.dart';
import 'package:waterapp/views/widgets/custom_textformfield.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  MyTabControllers myTabControllers = Get.put(MyTabControllers());
  SignUpController signUpController = Get.put(SignUpController());
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController refController = TextEditingController();

  _onpress() {
    print("ontap");
    Get.to(MainPage());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppSizes.PAGE_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/logo.jpg')),
            const SizedBox(
              height: AppSizes.MARGIN_VERTICAL,
            ),
            CustomTextFormField(
              label: 'Name',
              textEditingController: nameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              label: 'Mobile Number',
              keyBoarType: TextInputType.number,
              textEditingController: mobileController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              label: 'New Password',
              textEditingController: passwordController,
              obsecure: true,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              label: 'Re-enter Password',
              textEditingController: repasswordController,
              obsecure: true,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              label: 'Referral Code (if any)',
              textEditingController: refController,
            ),
            const SizedBox(
              height: AppSizes.PAGE_PADDING,
            ),
            const CustomDropDown(
              label: 'Category',
            ),
            const SizedBox(
              height: AppSizes.PAGE_PADDING,
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  value: signUpController.isChecked.value,
                  onChanged: (value) {
                    signUpController.togleChecked(value);

                    setState(() {});
                  },
                ),
                Text("I accept"),
                TextButton(
                    onPressed: () {}, child: Text('Terms and Conditions')),
                // Text("and"),
                // TextButton(onPressed: () {}, child: Text("Privacy Policy"))
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
                child: CustomButton(
              label: 'Sign Up',
              rout: '/main',
            )),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an Account?"),
                TextButton(
                    onPressed: () {
                      myTabControllers.tabController.animateTo(
                          (myTabControllers.tabController.index + 1) % 2);
                    },
                    child: const Text('Log In'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
