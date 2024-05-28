import 'package:ecommerce_app2/components/my_drawer.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'My Shop',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'Pick from a list of premium quality products',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            itemBuilder: (context, index) {
              return null;
            },
          )
        ],
      ),
    );
  }
}
