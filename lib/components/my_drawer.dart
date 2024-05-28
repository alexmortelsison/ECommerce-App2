import 'package:ecommerce_app2/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 10),
              MyListTile(
                onPressed: () {},
                icon: const Icon(Icons.home_outlined),
                text: 'Home',
              ),
              MyListTile(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
                text: 'Cart',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              onPressed: () {},
              icon: const Icon(Icons.logout_outlined),
              text: 'Log Out',
            ),
          ),
        ],
      ),
    );
  }
}
