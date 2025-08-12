import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Inventory/widget/CustomInventorySearchBar.dart';
import 'package:flutter_mobile_inventory/Pages/Inventory/widget/DataTable.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child:Column(
          spacing: 3,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CustomInventorySearchBar(),
            ),
            Expanded(child: CustomDataTable2()),
          ],
        )
      ),
    );
  }
}
