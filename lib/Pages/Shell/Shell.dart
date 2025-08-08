import 'package:flutter/material.dart';
import 'package:flutter_mobile_inventory/Pages/Shell/widgets/AppBarWidget.dart';
import 'package:flutter_mobile_inventory/Pages/Shell/widgets/BottomNavBar.dart';
import 'package:flutter_mobile_inventory/Pages/Shell/widgets/Sidebar.dart';
import 'package:go_router/go_router.dart';

class Shell extends StatefulWidget {
  final Widget child;
  const Shell({super.key, required this.child});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(),
      drawer: Sidebar(),
      bottomNavigationBar: const Bottomnavbar(),
        body: widget.child);
  }
}
