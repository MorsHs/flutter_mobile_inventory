import 'package:flutter_mobile_inventory/Pages/Inventory/Inventory.dart';
import 'package:go_router/go_router.dart';

class InventoryRoute{
  static final route = [
    GoRoute(path: '/inventory',builder: (context, state) => const Inventory(),name: 'Inventory')
  ];
}