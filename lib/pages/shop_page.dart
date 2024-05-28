import 'package:ecommerce_app2/components/my_drawer.dart';
import 'package:ecommerce_app2/components/product_tile.dart';
import 'package:ecommerce_app2/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

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
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
        title: Text(
          'My Shop',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 25),
          Center(
            child: Text(
              'Pick from a selected list of premium products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Product product = products[index];
                return ProductTile(
                  product: product,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
