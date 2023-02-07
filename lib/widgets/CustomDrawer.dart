import 'package:flutter/material.dart';
import 'package:what_you_cook_today/widgets/Widgets.dart';

class CustomDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;

  const CustomDrawer({
    Key? key,
    required this.userName,
    required this.userEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration:  const BoxDecoration(
              color: Colors.deepOrange,
            ),
            //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration:  const BoxDecoration(color: Colors.transparent),
              accountName: CustomTextHeading(
                title: userName,
                textSize: 20,
              ),
              accountEmail: CustomTextHeading(
                title: userEmail,
                textSize: 15,
              ),
              currentAccountPictureSize: const Size.square(50),

            ), //UserAccountDrawerHeader
          ),
          //DrawerHeader
          ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: const Text('Make Special Order'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt),
            title: const Text('Order List'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}