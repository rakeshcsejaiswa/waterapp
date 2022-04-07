import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/consts/app_strings.dart';
import 'package:waterapp/controllers/home/home_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(Icons.menu),
          onTap: () => Scaffold.of(context).openDrawer(),
        ),
        title: const Text(AppStrings.APPNAME),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CarouselSlider(
                  carouselController: _homeController.carouselController,
                  items: _homeController.imgList
                      .map((item) => Container(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                      ),
                                      child: Image.asset(
                                        item,
                                        fit: BoxFit.cover,
                                        width: 1000.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 0.8,
                      height: 180.0,
                      enableInfiniteScroll: false,
                      pauseAutoPlayOnTouch: true,
                      //  autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      onPageChanged: (index, reason) =>
                          _homeController.carouselIndex(index),
                      initialPage: 2)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      _homeController.imgList.asMap().entries.map((entry) {
                    return Obx(
                      () => GestureDetector(
                          onTap: () => _homeController.changeCarousel(entry),
                          child: Container(
                            width: 6.0,
                            height: 6.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : AppColors.app_color)
                                    .withOpacity(
                                        _homeController.carouselIndex ==
                                                entry.key
                                            ? 0.9
                                            : 0.4)),
                          )),
                    );
                  }).toList()),
              SizedBox(
                height: 5.0,
              ),
              cardMenu(),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/refer.png',
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [Text("Product"), Icon(Icons.keyboard_arrow_right)],
                ),
              ),
              products()
            ],
          ),
        ),
      ),
    );
  }

  cardMenu() {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 2, 8, 0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5.0)),
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cardItems('shop Now', Icons.store, "product"),
              cardItems('Track Order', Icons.location_on, ""),
              cardItems('My Rewards', Icons.card_giftcard, ""),
              cardItems('Feedback', Icons.feedback, "")
            ],
          ),
        ),
      ),
    );
  }

  products() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            _homeController.toRoute("productdetails");
          },
          child: productCardItems(
              FontAwesomeIcons.truck, 'assets/images/jar.jpg', '20 Liter Jar'),
        ),
        InkWell(
          onTap: () {},
          child: productCardItems(FontAwesomeIcons.truck,
              'assets/images/bottle.jpg', '1 Liter Bottle(cartoon)'),
        )
      ],
    );
  }

  cardItems(var name, IconData icon, var rout) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
            onPressed: () => Get.toNamed(rout),
            textColor: Colors.white,
            color: AppColors.app_color,
            child: Icon(
              icon,
              size: 24,
            ),
            padding: EdgeInsets.all(10),
            shape: CircleBorder(),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(onTap: () {}, child: Text(name))
        ],
      ),
    );
  }

  productCardItems(IconData icon, var image, var product_name) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 2, 8, 0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: AppColors.app_color,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text(product_name))
                ],
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.centerRight,
              child: Image.asset(
                image,
                height: 70,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
