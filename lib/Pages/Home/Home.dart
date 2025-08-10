import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Home/widgets/GridViewBuildReportContainer.dart';
import 'package:flutter_mobile_inventory/Pages/Home/widgets/ReportContainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> month = ['January','February','March','April','May','June','July','August','September','October','November','December'];
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 2,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${month[DateTime.now().month-1]} Report', style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridViewBuildReportContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
