import 'package:get/get.dart';
import 'package:waterapp/controllers/base_controller.dart';
import 'package:waterapp/services/base_client.dart';

class LoginController extends GetxController with BaseController {
  var obsecure = false.obs;

  toggleObsecure() {
    if (obsecure.value) {
      obsecure.value = false;
    } else {
      obsecure.value = true;
    }
  }

  // void postData() async {
  //   var response = await BaseClient()
  //       .post('baseUrl', 'api', 'payloadObj')
  //       .catchError(handleError);
  // }
}
