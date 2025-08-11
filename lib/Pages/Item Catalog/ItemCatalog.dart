import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomFilterChipBuilder.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomFilterChips.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomSearchBar.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/GridViewBuildItemContainer.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 20)),
              CustomSearchBar(),
              SizedBox(height: 70,child: CustomFilterChipBuilder()),
              GridViewBuildItemContainer()
            ]
          ),
      ),
    );
  }
}
