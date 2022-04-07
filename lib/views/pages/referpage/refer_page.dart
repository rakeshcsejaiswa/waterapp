import 'package:flutter/material.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/consts/app_strings.dart';
import 'package:waterapp/views/widgets/custom_button.dart';
import 'package:waterapp/views/widgets/custom_textformfield.dart';

class ReferPage extends StatelessWidget {
  ReferPage({Key? key}) : super(key: key);
  var code = 'abccc';
  bool isobsecure = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            child: const Icon(Icons.menu),
            onTap: () => {Scaffold.of(context).openDrawer()}),
        title: const Text(AppStrings.REFER),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                imageWidget(context),
                const SizedBox(
                  height: 20.0,
                ),
                referWidget(),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.grey,
                  width: width * 1,
                  child: const Center(
                      child: Text(
                    'Points on Referral',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto'),
                  )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "* Earn points on the first sale of each new friend you refer",
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                    "* Your friend has to be in the same locality where you have placed your first order",
                    style: TextStyle(fontSize: 16)),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "* 100 points per referral",
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(child: CustomButton(label: 'REFER A FRIEND', rout: ''))
              ],
            )),
      ),
    );
  }

  imageWidget(context) {
    return Image.asset(
      'assets/images/referimg.png',
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    );
  }

  referWidget() {
    return Row(
      children: [
        const Text(
          "Referral Code",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(3.0)),
            child: Center(
              child: Text(
                isobsecure ? code : '${code.replaceAll(RegExp(r"."), "*")}',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(3.0)),
          child: Icon(
            isobsecure ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
