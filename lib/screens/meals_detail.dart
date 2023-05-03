import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:meals/model/meal.dart';

class MealsDetailScreen extends StatelessWidget {
  const MealsDetailScreen(
      {super.key, required this.meal, required this.onToggleFavorite});
  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
          actions: [
            IconButton(
                onPressed: () {
                  onToggleFavorite(meal);
                },
                icon: const Icon(Icons.star))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 30),
          children: [
            Column(
              children: [
                Image.network(
                  meal.imageUrl,
                  height: 300,
                  width: double.infinity,
                ),
                Text('Ingredients',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(
                  height: 14,
                ),
                for (final ingredients in meal.ingredients)
                  Text(ingredients,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(
                  height: 14,
                ),
                Text('Steps',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
                for (final steps in meal.steps)
                  Text(steps,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground)),
              ],
            )
          ],
        ));
  }
}
