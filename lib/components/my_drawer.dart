import 'package:ecommerce_app2/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
                MyListTile(
                  text: 'Home',
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {},
                ),
                MyListTile(
                  text: 'Cart',
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: MyListTile(
                text: 'Log Out',
                icon: const Icon(Icons.login_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
