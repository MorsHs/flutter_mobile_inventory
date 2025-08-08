import 'package:flutter_mobile_inventory/Pages/Export/Export_Route.dart';
import 'package:flutter_mobile_inventory/Pages/Home/Home_Route.dart';
import 'package:flutter_mobile_inventory/Pages/Inventory/Inventory_Route.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/Item_Catalog_Route.dart';
import 'package:flutter_mobile_inventory/Pages/Shell/Shell.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      ShellRoute(
        routes: [
          ...HomeRoute.route,
          ...CatalogRoutes.route,
          ...InventoryRoute.route,
          ...ExportRoute.route,
        ],builder: (context, state, child) => Shell(child: child),
      ),
    ],
  );
}
