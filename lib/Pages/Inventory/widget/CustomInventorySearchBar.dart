import 'package:flutter/material.dart';

class CustomInventorySearchBar extends StatelessWidget {
  const CustomInventorySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SearchBar(
        leading: Icon(Icons.search),
        elevation: WidgetStatePropertyAll(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        hintText: 'Search Item',
      ),
    );;
  }
}
