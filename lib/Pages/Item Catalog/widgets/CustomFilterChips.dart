import 'package:flutter/material.dart';

class CustomFilterChips extends StatelessWidget {
  final String filterText;
  final bool isSelected;
  final ValueChanged<bool> onSelected;


  const CustomFilterChips({super.key, required this.filterText, required this.isSelected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(filterText),
      onSelected: onSelected,
      selected: isSelected,
    );
  }
}
