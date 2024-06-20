import 'package:flutter/material.dart';
import 'package:monresto/screens/favorites.dart';
import 'package:monresto/screens/home.dart';
import 'package:monresto/screens/restaurants.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({super.key, required this.title});

  final String title;

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  var _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const RestaurantsPage(),
    const FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: const TextStyle(color: Colors.white),
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: FloatingNavbar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            FloatingNavbarItem(icon: Icons.home_filled, title: "Accueil"),
            FloatingNavbarItem(icon: Icons.food_bank, title: "Restaurants"),
            FloatingNavbarItem(icon: Icons.favorite, title: "Favoris"),
          ]),
    );
  }
}
