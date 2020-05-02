import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text(
            'Second Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
