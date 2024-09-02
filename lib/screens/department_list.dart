import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: MediaQuery.sizeOf(context).width/1,
        decoration: BoxDecoration(
          
        ),
      ),
    );
  }
}