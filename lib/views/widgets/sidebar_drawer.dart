import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:waterapp/consts/app_colors.dart';
import 'package:waterapp/consts/app_sizes.dart';

class SideBarDrawer extends StatelessWidget {
  const SideBarDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: AppColors.app_color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/user.png',
                    width: 50,
                    height: 50,
                  ),
                  Text("username"),
                  Text("number")
                ],
              )),
          ListTile(
            leading: const Icon(Icons.desktop_mac, color: Colors.blue),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("0"), Text("Reward Points")],
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          const ListTile(
            leading: Icon(Icons.store),
            title: Text("Shop Now"),
          ),
          const ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Feedback"),
          ),
          const ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text("Terms and Conditions"),
          ),
          const ListTile(
            leading: Icon(Icons.security),
            title: Text("Privacy Policy"),
          ),
          const ListTile(
            leading: Icon(Icons.send),
            title: Text("Refer a Friend"),
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text("About Us"),
          ),
          const ListTile(
            leading: Icon(Icons.supervisor_account_rounded),
            title: Text("Contact Us"),
          ),
        ],
      ),
    );
  }
}
