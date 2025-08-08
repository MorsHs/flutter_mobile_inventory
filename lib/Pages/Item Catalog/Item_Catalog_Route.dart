import 'package:flutter_mobile_inventory/Pages/Home/Home.dart';
import 'package:flutter_mobile_inventory/Pages/Item%20Catalog/ItemCatalog.dart';
import 'package:flutter_mobile_inventory/Pages/Shell/Shell.dart';
import 'package:go_router/go_router.dart';

class CatalogRoutes {
  static final route = [
    GoRoute(path: '/catalog', builder: (context, state) => const Catalog(),name: "Catalog"),
  ];
}
