import 'package:flutter/material.dart';

class TestContainer extends StatelessWidget {
  const TestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
          Image.asset('assets/images/landscape.jpg'),
        ]
        )
    );
  }
}
