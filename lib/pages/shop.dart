import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  final List<Product> products = [
    Product('Pizza', 'Description for Pizza', 20, Icons.shopping_basket),
    Product('Sushi', 'Description for Sushi', 30, Icons.shopping_basket),
    Product('Burger', 'Description for Burger', 15, Icons.shopping_basket),
    Product('Chocolate', 'Description for Chocolate', 25, Icons.shopping_basket),
    Product('Taco', 'Description for Taco', 20, Icons.shopping_basket),
    Product('Sausage', 'Description for Sausage', 30, Icons.shopping_basket),
    Product('Meatball', 'Description for Meatball', 15, Icons.shopping_basket),
    Product('Noodle', 'Description for Noodle', 25, Icons.shopping_basket),
    Product('Fried rice', 'Description for Fried rice', 20, Icons.shopping_basket),
    Product('Steak', 'Description for Steak', 30, Icons.shopping_basket),
    Product('Salad', 'Description for Salad', 15, Icons.shopping_basket),
    Product('Sandwiches', 'Description for Sandwiches', 25, Icons.shopping_basket),
    Product('Corn soup', 'Description for Corn soup', 20, Icons.shopping_basket),
    Product('Fried chicken', 'Description for Fried chicken', 30, Icons.shopping_basket),
    Product('Ramen', 'Description for Ramen', 15, Icons.shopping_basket),
    Product('Hot dog', 'Description for Hot dog', 25, Icons.shopping_basket),
    Product('Curry', 'Description for Curry', 20, Icons.shopping_basket),
    Product('Popcorn ', 'Description for Popcorn', 30, Icons.shopping_basket),
    Product('Cake', 'Description for Cake', 15, Icons.shopping_basket),
    Product('Nugget', 'Description for Nugget', 25, Icons.shopping_basket),
    Product('Yogurt', 'Description for Yogurt', 25, Icons.shopping_basket),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;
  final IconData icon;

  Product(this.name, this.description, this.price, this.icon);
}

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(product.icon),
      title: Text(product.name),
      subtitle: Text(product.description),
      trailing: Text('\$${product.price.toStringAsFixed(2)}'),
    );
  }
}
