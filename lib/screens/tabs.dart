import 'package:flutter/material.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/model/meal.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeal = [];

  void _toggleFavoriteMeals(Meal meal) {
    var isExisting = _favoriteMeal.contains(meal);

    if (isExisting) {
      _favoriteMeal.remove(meal);
    } else {
      _favoriteMeal.add(meal);
    }
  }

  void _selectPage(int index) {
    setState(() => _selectedPageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const CategoriesScreen();
    var title = 'Categories';

    if (_selectedPageIndex == 1) {
      activeScreen = const MealsScreen(meal: []);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Data'),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: _selectPage,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.set_meal), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
          ]),
    );
  }
}
