import 'package:flutter_mobile_inventory/Pages/Export/Export.dart';
import 'package:go_router/go_router.dart';

class ExportRoute {
  static final route = [
    GoRoute(path: '/export',builder: (context, state) => const Export(),name: 'Export')
  ];
}