import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Inventory/widget/ItemContainer.dart';

class GridViewBuildItemContainer extends StatelessWidget {
  const GridViewBuildItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 9,
        padding: EdgeInsets.only(left: 5,right: 5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 0.75
            //ChildAspectRatio = 1 (perfect square)
            // '' < 1 (Taller)
            // '' > 1 (wider like banners)
        ),
        itemBuilder: (context, index) => ItemContainer(),
      ),
    );
  }
}
