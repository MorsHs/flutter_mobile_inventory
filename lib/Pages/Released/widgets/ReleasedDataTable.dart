import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class ReleasedDataTable extends StatelessWidget {
  const ReleasedDataTable({super.key});

  // Column
  // Name, Category, Po No., Pr No., ICS No.,Retriever, Department, Remarks
  @override
  Widget build(BuildContext context) {
    List<String> colName = [
      'Name',
      'Category',
      'Po',
      'Pr',
      'ICS',
      'Retriever',
      'Department',
      'Date',
      'Remarks'
    ];
    return DataTable2(
      columns: List.generate(
        colName.length,
        (index) => DataColumn2(label: Text(colName[index])),
      ),
      rows: [],
    );
  }
}
