import 'package:ecommerce_app2/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 72,
                ),
              ),
              MyListTile(
                icon: Icons.home_outlined,
                text: 'Shop',
                onPressed: () {},
              ),
              MyListTile(
                icon: Icons.shopping_cart_outlined,
                text: 'Cart',
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.logout_outlined,
              text: 'Log Out',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
