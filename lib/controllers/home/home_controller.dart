import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> imgList = [
    'assets/images/carousel1.jpg',
    'assets/images/carousel2.jpg',
    'assets/images/carousel3.jpg',
  ];
  var carouselIndex = 0.obs;
  CarouselController carouselController = CarouselController();

  changeCarouselIndex(index) {
    carouselIndex = index;
  }

  changeCarousel(entry) {
    carouselController.animateToPage(entry.key);
  }

  toRoute(value) {
    Get.toNamed(value);
  }
}
