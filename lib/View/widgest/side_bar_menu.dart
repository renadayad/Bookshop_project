import 'package:bookshop/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 40,
          ),
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              'Book Shop',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text('profile'),
            onTap: () {
              Get.toNamed(Routes.profileScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Dashboard'),
          ),
          ListTile(
            leading: Icon(Icons.import_export),
            title: const Text('Stock'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_added_sharp),
            title: const Text('Orders'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Customars'),
          ),
        ],
      ),
    );
  }
}
