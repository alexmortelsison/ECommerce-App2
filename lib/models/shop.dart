import 'package:ecommerce_app2/models/product.dart';

class Shop {
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      price: 99.99,
      imagePath: 'images/1.png',
      description: 'Cool Product',
    ),
    Product(
      name: 'Product 2',
      price: 99.99,
      imagePath: 'images/2.png',
      description: 'Cool Product',
    ),
    Product(
      name: 'Product 3',
      price: 99.99,
      imagePath: 'images/3.png',
      description: 'Cool Product',
    ),
    Product(
      name: 'Product 4',
      price: 99.99,
      imagePath: 'images/4.png',
      description: 'Cool Product',
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
