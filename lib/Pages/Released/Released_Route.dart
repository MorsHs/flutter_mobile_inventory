import 'package:flutter_mobile_inventory/Pages/Released/Released.dart';
import 'package:go_router/go_router.dart';

class ReleasedRoute {
  static final route = [
    GoRoute(path: '/released',builder: (context, state) => const Released(),name: 'Released Items')
  ];
}