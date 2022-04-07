import 'package:get/get.dart';

class ProfileController extends GetxController {
  var isSwitch = true.obs;

  subscribeToggle(value) {
    isSwitch.value = value;
    print(isSwitch);
  }
}
