import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/ItemContainer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MasonryReleaseedItemBuilder extends StatelessWidget {
  const MasonryReleaseedItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(9, (_) => ItemContainer());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MasonryGridView.count(
        itemCount: items.length,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) => items[index],
      ),
    );
  }
}
