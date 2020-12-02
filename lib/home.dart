import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T&P'),
      ),
      body: Column(
        children: [
          Image(image: AssetImage('asset/skit.jpeg')),
        ],
      ),
    );
  }
}
