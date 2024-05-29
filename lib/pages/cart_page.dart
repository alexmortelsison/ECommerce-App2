import 'package:ecommerce_app2/components/my_button.dart';
import 'package:ecommerce_app2/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Remove this item from cart?'),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          MaterialButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Successfully removed from cart!'),
                ),
              );
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'My Cart',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
      body: Expanded(
        child: cart.isEmpty
            ? const Center(child: Text('Your cart is empty'))
            : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final Product item = cart[index];
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(item.imagePath),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item.price.toStringAsFixed(2),
                              style: const TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        MyButton(
                          onTap: () => removeFromCart(context, item),
                          child: const Icon(Icons.delete),
                        )
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
