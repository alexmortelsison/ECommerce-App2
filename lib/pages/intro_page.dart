import 'package:ecommerce_app2/components/my_button.dart';
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
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 72,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Alex Shop',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 5),
          Text(
            'Home of Premium Quality Products',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(height: 10),
          MyButton(
            onTap: () => Navigator.pushNamed(context, '/shop_page'),
            child: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
