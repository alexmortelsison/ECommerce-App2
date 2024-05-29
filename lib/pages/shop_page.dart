import 'package:ecommerce_app2/components/product_tile.dart';
import 'package:ecommerce_app2/models/product.dart';
import 'package:ecommerce_app2/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: Text(
          'My Shop',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'Pick from a list of premium quality products.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          SizedBox(
              height: 750,
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Product product = products[index];
                  return ProductTile(product: product);
                },
              ))
        ],
      ),
    );
  }
}
