import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterapp/models/products/products.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Products> product = [
      Products(id: 1, name: "20L jar ", image: 'assets/images/jar.jpg'),
      Products(
          id: 2,
          name: "1L bottle(cartoon) ",
          image: 'assets/images/bottle.jpg'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Obx(
            () => ListView.builder(
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    children: [
                      Image.asset(
                        product[index].image!,
                        height: 100,
                      ),
                      Text(product[index].name!)
                    ],
                  ),
                );
              },
            ),
          )
          // Column(
          //   children: [

          //   ],
          // ),
          ),
    );
  }
}
