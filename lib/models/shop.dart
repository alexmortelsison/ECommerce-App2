import 'package:ecommerce_app2/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: 'Luminary Watches.',
        price: 990.00,
        imagePath: 'images/1.png',
        description:
            'Introducing the epitome of timeless elegance and precision engineering: the Titanium Collection by Luminary Watches. Crafted for the modern gentleman who values sophistication and reliability, each timepiece is meticulously handcrafted with premium grade titanium, ensuring unparalleled durability and a lightweight feel on the wrist. With its sleek, minimalist design and Swiss-made automatic movement, the Titanium Collection seamlessly blends classic aesthetics with cutting-edge technology. Elevate your style and make a statement of refinement with Luminary Watches, where luxury meets innovation.'),
    Product(
      name: 'Aurora Watches',
      price: 1290.00,
      imagePath: 'images/2.png',
      description:
          'Introducing the Essence Diamond Series by Aurora Watches, where luxury meets femininity in the most captivating way. Exquisitely designed for the discerning woman who appreciates elegance and sophistication, each timepiece in this collection is adorned with a dazzling array of ethically sourced diamonds, meticulously set in a radiant display. Crafted with precision and passion, the Essence Diamond Series seamlessly blends timeless design with modern flair, boasting a Swiss quartz movement for impeccable accuracy. Elevate your ensemble with the unparalleled beauty and grace of Aurora Watches, where every moment becomes an enchanting reflection of your impeccable taste.',
    ),
    Product(
      name: 'SoundSphere',
      price: 399.99,
      imagePath: 'images/3.png',
      description:
          'Introducing the pinnacle of audio excellence: SoundSphere Headphones. Crafted for those who demand nothing but the best, these headphones redefine premium quality with their unparalleled sound clarity and immersive listening experience. Designed with precision engineering and cutting-edge technology, each pair of SoundSphere Headphones delivers studio-grade sound reproduction, bringing your music to life with astonishing detail and depth. With luxurious comfort and sleek, sophisticated design, these headphones are the perfect companion for audiophiles and music enthusiasts alike. Elevate your listening experience to new heights with SoundSphere Headphones, where innovation meets perfection.',
    ),
    Product(
      name: 'Celestial Shades',
      price: 599.99,
      imagePath: 'images/4.png',
      description:
          'Introducing the Radiance Collection by Celestial Shades, where style meets unparalleled sun protection in the most enchanting way. Meticulously crafted for the modern woman who values both fashion and function, each pair of sunglasses in this collection is a testament to luxury and sophistication. With their sleek lines and exquisite detailing, Radiance sunglasses effortlessly elevate any look, while the finest polarized lenses shield your eyes from harsh glare and harmful UV rays. Whether you\'re strolling along the beach or exploring the city streets, embrace the glamour of celestial elegance with Celestial Shades\' Radiance Collection, where every moment shines with undeniable allure.',
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
