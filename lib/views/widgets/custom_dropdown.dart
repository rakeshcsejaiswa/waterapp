import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:waterapp/consts/app_strings.dart';

class CustomDropDown extends StatelessWidget {
  final String label;
  const CustomDropDown({Key? key, this.label = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? selected = "select";
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //  Text(label),
          Container(
            width: MediaQuery.of(context).size.width,
            child: DropdownSearch(
              mode: Mode.MENU,
              showSelectedItems: true,
              selectedItem: selected,
              label: "Category",
              items: AppStrings.CATEGORY,
              // AppStrings.CATEGORY.map((e) {
              //   return DropdownMenuItem(
              //     child: Text(e),
              //     value: e,
              //   );
              // }).toList(),
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
