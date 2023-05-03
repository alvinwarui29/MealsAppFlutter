import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _isGlutenChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('your filters')),
      body: Column(
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
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 33, right: 22),
          )
        ],
      ),
    );
  }
}
