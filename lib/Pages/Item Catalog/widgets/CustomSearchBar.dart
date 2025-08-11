import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomFilterChips.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SearchBar(
        elevation: WidgetStatePropertyAll(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        hintText: 'Search Item',
      ),
    );
  }
}
