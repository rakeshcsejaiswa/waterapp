import 'package:flutter/material.dart';
import 'package:waterapp/consts/app_sizes.dart';

class CustomCard extends StatelessWidget {
  final IconData? iconData;
  final String title;
  final String? desc;
  final Widget? suffix;
  const CustomCard(
      {Key? key, this.iconData, required this.title, this.desc, this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.CARD_HEIGHT,
      width: MediaQuery.of(context).size.width * 0.9,
      // margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                ),
                Text(desc!)
              ],
            ),
            const Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
