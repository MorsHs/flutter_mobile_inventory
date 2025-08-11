import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> colName = ['Category', 'Quantity'];

    return Scaffold(
      body: SafeArea(
        child: DataTable2(
          columns: List.generate(
            colName.length,
                (index) => DataColumn2(label: Text(colName[index])),
          ),
          rows: [],
        ),
      ),
    );
  }
}
