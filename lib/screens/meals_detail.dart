import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:meals/model/meal.dart';

class MealsDetailScreen extends StatelessWidget {
  const MealsDetailScreen({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: Center(
        child: FadeInImage(
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl)),
      ),
    );
  }
}
