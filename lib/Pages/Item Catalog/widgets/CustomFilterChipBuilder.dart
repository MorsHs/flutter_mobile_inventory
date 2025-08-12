import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/widgets/CustomFilterChips.dart';

class CustomFilterChipBuilder extends StatefulWidget {
  const CustomFilterChipBuilder({super.key});

  @override
  State<CustomFilterChipBuilder> createState() =>
      _CustomFilterChipBuilderState();
}

class _CustomFilterChipBuilderState extends State<CustomFilterChipBuilder> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemBuilder:
            (context, index) => CustomFilterChips(
              filterText: filterText()[index],
              isSelected: selectedIndex == index,
              onSelected: (value) {
                setState(() {
                  if(selectedIndex == index) {
                    selectedIndex = -1;
                  }
                  else{
                    selectedIndex = index;
                  }
                });
              },
            ),
        itemCount: filterText().length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  List<String> filterText() {
    return ['Category','Po No.', 'Pr No.', 'ICS No.'];
  }
}
