import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isChecked = false.obs;

  void togleChecked(ischeck) {
    isChecked.value = ischeck;
    print(isChecked);
  }
}
