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
        body: Column(
          children: [
            Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
            ),
            Text('Ingredients',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground)),
            for (final ingredients in meal.ingredients)
              Text(ingredients,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
          ],
        ));
  }
}
