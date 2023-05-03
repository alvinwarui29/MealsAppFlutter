import 'package:flutter/material.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/model/meal.dart';
import 'package:meals/widgets/main_drawer.dart';

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

  void _showInfo(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _toggleFavoriteMeals(Meal meal) {
    var isExisting = _favoriteMeal.contains(meal);

    if (isExisting) {
      setState(() {
        _favoriteMeal.remove(meal);
        _showInfo('Item removed');
      });
    } else {
      setState(() {
        _favoriteMeal.add(meal);
        _showInfo('Item Added');
      });
    }
  }

  void _selectPage(int index) {
    setState(() => _selectedPageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = CategoriesScreen(
      onToggleFavorite: _toggleFavoriteMeals,
    );
    void _onItemSelected(String identifier) {
      if (identifier == 'filters') {
        Navigator.of(context).pop();
      } else {
        Navigator.of(context).pop();
      }
    }

    var title = 'Categories';

    if (_selectedPageIndex == 1) {
      activeScreen = MealsScreen(
        meal: _favoriteMeal,
        onToggleFavorite: _toggleFavoriteMeals,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Data'),
      ),
      drawer: MainDrawer(onSelectItem: _onItemSelected),
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
