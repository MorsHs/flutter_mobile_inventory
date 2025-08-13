import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomFilterChipBuilder.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomSearchBar.dart';
import 'package:flutter_mobile_inventory/Pages/Released/widgets/MasonryReleaseedItemBuilder.dart';

class Released extends StatelessWidget {
  const Released({super.key});

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
              Expanded(child: MasonryReleaseedItemBuilder())
            ]
        ),
      ),
    );
  }
}
