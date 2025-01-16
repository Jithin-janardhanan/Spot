import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        'Spot',
        style: TextStyle(color: Colors.amberAccent),
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
      actions: [
        IconButton(
          icon: Icon(Icons.logout_outlined),
          onPressed: () {},
        ),
      ],
    ));
  }
}
