import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Released/widgets/ReleasedDataTable.dart';

class Released extends StatelessWidget {
  const Released({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [Expanded(child: ReleasedDataTable())]),
      ),
    );
  }
}
