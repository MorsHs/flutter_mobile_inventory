import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: IconButton(onPressed: () => null, icon: Icon(Icons.list)),
      hintText: 'Search Item',
    );
  }
}
