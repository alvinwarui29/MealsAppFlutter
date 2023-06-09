import 'package:flutter/material.dart';
import 'package:meals/screens/tabs.dart';
import 'package:meals/widgets/main_drawer.dart';

enum Filter {
  vegan,
  vegetarian,
  luctoseFree,
  glutenFree,
}

class FilterScreen extends StatefulWidget {
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _isGlutenChecked = false;
  var _isLuctoseChecked = false;
  var _isVegetarianChecked = false;
  var _isVeganChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MainDrawer(onSelectItem: (ident) {
      //   if (ident == 'meals') {
      //     Navigator.of(context).pop();
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (cnt) => TabsScreen(),
      //     ));
      //   }
      // }),
      appBar: AppBar(title: const Text('your filters')),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.glutenFree: _isGlutenChecked,
            Filter.luctoseFree: _isLuctoseChecked,
            Filter.vegan: _isVeganChecked,
            Filter.vegetarian: _isVegetarianChecked,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _isGlutenChecked,
              onChanged: (isChecked) {
                setState(() {
                  _isGlutenChecked = isChecked;
                });
              },
              title: Text('Gluten-free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
              subtitle: Text(
                'Meals that are gluten free',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 33, right: 22),
            ),
            SwitchListTile(
              value: _isLuctoseChecked,
              onChanged: (isChecked) {
                setState(() {
                  _isLuctoseChecked = isChecked;
                });
              },
              title: Text('Luctose-free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
              subtitle: Text(
                'Meals that are luctose free',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 33, right: 22),
            ),
            SwitchListTile(
              value: _isVegetarianChecked,
              onChanged: (isChecked) {
                setState(() {
                  _isVegetarianChecked = isChecked;
                });
              },
              title: Text('Vegetarian',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
              subtitle: Text(
                'Meals that are veges',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 33, right: 22),
            ),
            SwitchListTile(
              value: _isGlutenChecked,
              onChanged: (isChecked) {
                setState(() {
                  _isGlutenChecked = isChecked;
                });
              },
              title: Text('Vegan-free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
              subtitle: Text(
                'Meals that are vegan free',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 33, right: 22),
            )
          ],
        ),
      ),
    );
  }
}
