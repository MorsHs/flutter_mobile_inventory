import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Inventory/widget/CustomSearchBar.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/GridViewBuildItemContainer.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              CustomSearchBar(),
              GridViewBuildItemContainer()
            ]
          ),
      ),
    );
  }
}
