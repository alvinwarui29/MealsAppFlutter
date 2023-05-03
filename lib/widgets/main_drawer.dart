import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectItem});

  final void Function(String identifier) onSelectItem;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Drawer(
          child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Row(
                children: [
                  const Icon(
                    Icons.fastfood,
                    size: 48,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Cooking up',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.restaurant,
                size: 26, color: Theme.of(context).colorScheme.onBackground),
            title: Text(
              'meals',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            onTap: () {
              onSelectItem('meals');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,
                size: 26, color: Theme.of(context).colorScheme.onBackground),
            title: Text(
              'Filters',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            onTap: () {
              onSelectItem('filters');
            },
          ),
        ],
      )),
    );
  }
}
