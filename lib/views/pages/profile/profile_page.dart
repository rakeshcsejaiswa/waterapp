import 'package:flutter/material.dart';
import 'package:waterapp/consts/app_strings.dart';
import 'package:waterapp/views/widgets/custom_card.dart';
import 'package:waterapp/views/widgets/custom_card_with_toggle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double coverheight = 250;
    double profileheight = 50;
    double top = coverheight - profileheight / 2;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            child: const Icon(Icons.menu),
            onTap: () => {Scaffold.of(context).openDrawer()}),
        title: const Text(AppStrings.PROFILE),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.deepPurple,
                  height: coverheight,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        profileimage(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "name",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        const Text("contact",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: top,
                    child: Container(
                      height: profileheight,
                      width: MediaQuery.of(context).size.width * 0.9,
                      // margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.desktop_mac_outlined,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: const [
                              Text(
                                "0",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Reward Point",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomCard(
              title: 'My Orders',
              desc: 'View My orders',
              iconData: Icons.shopping_cart,
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomCardWithToggle(
              title: 'Subscribe Offer',
              desc: 'Subscribe to Offer/Newsletters',
              iconData: Icons.subscriptions_sharp,
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomCard(
              title: 'Address',
              desc: 'View your address detail',
              iconData: Icons.location_on,
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomCard(
                title: 'Change Password',
                desc: 'change your password',
                iconData: Icons.lock),
            const SizedBox(
              height: 8,
            ),
            const CustomCard(
              title: 'Feedback',
              desc: 'Provide feedback',
              iconData: Icons.feedback,
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomCard(
              title: 'Sign Out',
              desc: 'Sign out from this app',
              iconData: Icons.logout,
            )
          ],
        ),
      ),
    );
  }

  profileimage() {
    return Stack(
      children: [
        Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
              border: Border.all(width: 4, color: Colors.white),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 10))
              ],
              shape: BoxShape.circle,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                  ))),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 4,
                    color: Colors.white,
                  ),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
              ),
            )),
      ],
    );
  }
}
