import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  final search = TextEditingController();
  String searchText = '';

  @override
  void initState() {
    super.initState();
    search.addListener(_updateSearchText);
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  void _updateSearchText() {
    setState(() {
      searchText = search.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoSearchTextField(
          controller: search,
          placeholder: "Rechercher",
        ),
        Text(searchText)
      ],
    );
  }
}
