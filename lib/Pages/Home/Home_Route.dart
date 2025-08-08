import 'package:flutter_mobile_inventory/Pages/Home/Home.dart';
import 'package:go_router/go_router.dart';

class HomeRoute {
  static final route = [
    GoRoute(path: '/home',builder: (context, state) => const Home(),name: 'Home')
  ];
}