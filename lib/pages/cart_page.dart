import 'package:ecommerce_app2/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Remove this item to your cart?'),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
          ),
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
          'Cart',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 24),
            ),
            Expanded(
              child: cart.isEmpty
                  ? const Center(
                      child: Text('Your cart is empty'),
                    )
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              leading: Image.asset(item.imagePath),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.name,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    '\$${item.price.toStringAsFixed(2)}',
                                    style: const TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              trailing: MyButton(
                                onTap: () => removeFromCart(context, item),
                                child: const Icon(Icons.delete),
                              )),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
