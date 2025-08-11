import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int index = 0;

  List<NavigationDestination> destinationList = [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.inventory), label: 'Inventory'),
    NavigationDestination(icon: Icon(Icons.book), label: 'Item Catalog'),
    NavigationDestination(
      icon: Icon(Icons.auto_awesome_mosaic),
      label: 'Export',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 8,
      backgroundColor: Colors.teal,
      onDestinationSelected:
          (value) => setState(() {
            index = value;
            switch (index) {
              case 0:
                context.go('/home');
                break;
              case 1:
                context.go('/inventory');
                break;
              case 2:
                context.go('/catalog');
                break;
              case 3:
                context.go('/export');
                break;
            }
          }),
      selectedIndex: index,
      destinations: destinationList,
    );
  }
}
