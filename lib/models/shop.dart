import 'package:ecommerce_app2/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      price: 599.99,
      imagePath: 'images/1.png',
      description:
          'Introducing the Horizon Chronograph: a pinnacle of sophistication and precision. Meticulously crafted with Swiss quartz movement, stainless steel casing, and scratch-resistant sapphire crystal, it epitomizes luxury and functionality in every moment.',
    ),
    Product(
      name: 'Product 2',
      price: 480.00,
      imagePath: 'images/2.png',
      description:
          'Introducing the Aurora Elegance: a Swiss-made masterpiece blending timeless grace with precision. Adorned with diamonds and featuring a mother-of-pearl dial, this watch exudes luxury and sophistication, perfect for the modern woman.',
    ),
    Product(
      name: 'Product 3',
      price: 290.00,
      imagePath: 'images/3.png',
      description:
          'Introducing the Symphony Elite: where sound meets elegance. Crafted with premium materials and cutting-edge technology, these headphones deliver unparalleled audio quality and comfort. With active noise cancellation and wireless connectivity, immerse yourself in your favorite music like never before.',
    ),
    Product(
      name: 'Product 4',
      price: 189.99,
      imagePath: 'images/4.png',
      description:
          'Introducing the Luna Luxe: a fusion of style and protection. Handcrafted with precision, these sunglasses boast polarized lenses and UV protection, ensuring both clarity and safety under the sun. With their sleek design and premium materials, they\'re the epitome of luxury for the modern woman.',
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
