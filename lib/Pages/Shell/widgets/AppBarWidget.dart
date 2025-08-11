import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Appbarwidget extends StatelessWidget implements PreferredSizeWidget{
  const Appbarwidget({super.key});

  // get kay getter dart magic voodoo shit nga naa sa c# last kita nako
  // return expression ang => so i remind nako sarili this shit exist
@override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final router_title = GoRouter.of(context).state.name.toString(); // Kuhaon ra ang name sa current router name

    return AppBar(
      elevation: 8,
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
      backgroundColor: Colors.teal,
      title: Text(router_title),
      leading: Builder(builder: (context) {
        return IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu));
      },),
      // leading: TextButton(onPressed: () => null, child: Icon(Icons.align_horizontal_left,color: Colors.white,size: 30,))
    );
  }
}
