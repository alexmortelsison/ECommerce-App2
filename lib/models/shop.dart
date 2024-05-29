import 'package:ecommerce_app2/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: 'Luminary Watch',
        price: 990.00,
        imagePath: 'images/1.png',
        description:
            'Introducing the epitome of timeless elegance and precision engineering: the Titanium Collection by Luminary Watches. Crafted for the modern gentleman who values sophistication and reliability, each timepiece is meticulously handcrafted with premium grade titanium, ensuring unparalleled durability and a lightweight feel on the wrist.'),
    Product(
      name: 'Aurora Watch',
      price: 1290.00,
      imagePath: 'images/2.png',
      description:
          'Introducing the Essence Diamond Series by Aurora Watches, where luxury meets femininity in the most captivating way. Exquisitely designed for the discerning woman who appreciates elegance and sophistication, each timepiece in this collection is adorned with a dazzling array of ethically sourced diamonds, meticulously set in a radiant display.',
    ),
    Product(
      name: 'SoundSphere',
      price: 399.99,
      imagePath: 'images/3.png',
      description:
          'Introducing the pinnacle of audio excellence: SoundSphere Headphones. Crafted for those who demand nothing but the best, these headphones redefine premium quality with their unparalleled sound clarity and immersive listening experience.',
    ),
    Product(
      name: 'Celestial Shades',
      price: 599.99,
      imagePath: 'images/4.png',
      description:
          'Introducing the Radiance Collection by Celestial Shades, where style meets unparalleled sun protection in the most enchanting way. Meticulously crafted for the modern woman who values both fashion and function, each pair of sunglasses in this collection is a testament to luxury and sophistication.',
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
