import 'package:get/get.dart';
import 'package:waterapp/controllers/bottomnav_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(BottomNavController());
  }
}
