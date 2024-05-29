import 'package:ecommerce_app2/components/my_button.dart';
import 'package:ecommerce_app2/components/my_drawer.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Alex Shop',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 5),
          Text(
            'Home Of Premium Quality Products',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(height: 25),
          MyButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () => Navigator.pushNamed(context, '/shop_page'),
          )
        ],
      ),
    );
  }
}
