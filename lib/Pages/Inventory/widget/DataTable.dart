import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CustomDataTable2 extends StatelessWidget {
  const CustomDataTable2({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> colName = ['Category', 'Quantity'];
    List<String> rowName = ['Antivirus', '69'];

    //TODO Implement Sorting Next time
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable2(
        minWidth: 250,
        columns: List.generate(
          colName.length,
          (index) => DataColumn2(label: Text(colName[index])),
        ),
        rows: List.generate(
          20,
          (index) => DataRow2(
            cells: [
              DataCell(Text(rowName[0])),
              DataCell(Text(rowName[1])),
            ],
          ),
        ),
      ),
    );
  }
}
