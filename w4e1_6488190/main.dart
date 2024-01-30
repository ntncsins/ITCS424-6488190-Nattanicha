import 'package:flutter/material.dart';

void main() {
  runApp(ProductListApp());
}

class ProductListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListView(),
    );
  }
}

class Product {
  final String imagePath;
  final String name;
  final String description;
  final String price;

  Product({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });
}

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> productList = [
      Product(
        imagePath: "assets/images/iphone.png",
        name: "iPhone",
        description: "iPhone is a stylish phone.",
        price: "Price: 1000",
      ),
      Product(
        imagePath: "assets/images/pixel.png",
        name: "Pixel",
        description: "Pixel is a featureful phone.",
        price: "Price: 800",
      ),
      Product(
        imagePath: "assets/images/laptop.png",
        name: "Laptop",
        description: "Laptop is a productive development tool.",
        price: "Price: 2000",
      ),
      Product(
        imagePath: "assets/images/tablet.png",
        name: "Tablet",
        description: "Tablet is a useful device for meetings.",
        price: "Price: 1500",
      ),
      Product(
        imagePath: "assets/images/pendrive.png",
        name: "Pendrive",
        description: "Pendrive is a portable storage device.",
        price: "Price: 100",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          final product = productList[index];
          return Card(
            elevation: 2,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                product.imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.description),
                  Text(product.price),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
