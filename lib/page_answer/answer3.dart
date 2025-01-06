import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductLayout(),
    );
  }
}

class ProductLayout extends StatelessWidget {
  const ProductLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[300],
            child: const Text(
              'Product Layout',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),

          // Category Section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            color: Colors.grey[200],
            child: const Text(
              'Category: Electronics',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),

          // Product Section
          Expanded(
            child: Column(
              children: [
                // First row of products
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    productCard('Laptop', '999 THB',
                        'https://th.bing.com/th/id/OIP.16Mw3_5gUYlHM2NtD5CQgwHaHa?rs=1&pid=ImgDetMain'), // Replace with your image path
                    productCard('Smartphone', '699 THB',
                        'https://turbofuture.com/.image/t_share/MTk4MDE3Mzg0MTIyOTUwODE3/samuel-angor-3tqzbtsrrqa-unsplash.jpg'), // Replace with your image path
                  ],
                ),
                const SizedBox(height: 20),

                // Second row of products
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    productCard('Tablet', '499 THB',
                        'https://i.ebayimg.com/images/g/seYAAOSwd8RmfiGK/s-l960.webp'), // Replace with your image path
                    productCard('Camera', '299 THB',
                        'https://th.bing.com/th/id/OIP.5QKR6wtDGJYHHGp9x4cmBwHaHa?w=615&h=615&rs=1&pid=ImgDetMain'), // Replace with your image path
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productCard(String name, String price, String imagePath) {
    return Column(
      children: [
        ClipRect(
          child: Image.network(
            imagePath, // Load image from URL
            width: 150,
            height: 150,
            fit: BoxFit.cover, // Adjust image to fit the container
          ),
        ),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontSize: 16)),
        Text(price, style: const TextStyle(color: Colors.green)),
      ],
    );
  }
}
