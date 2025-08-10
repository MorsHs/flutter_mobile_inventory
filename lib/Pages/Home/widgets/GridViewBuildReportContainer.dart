import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Home/widgets/ReportContainer.dart';

class GridViewBuildReportContainer extends StatelessWidget {
  const GridViewBuildReportContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> name = ['Items Added','Released Items','Total Inventory','Total Transaction'];
    final List<IconData> icon = [Icons.add,Icons.remove,Icons.list_alt,Icons.transcribe_rounded];
    return SizedBox(
      height: 500,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => ReportContainer(name: name[index],iconData: icon[index],),
        itemCount: 4,
      ),
    );
  }
}
