import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meals App')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        children: const [
          Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
