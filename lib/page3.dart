import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        child: Image(
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          image: AssetImage('flutter2/Assets/images/musicband.jpg'),
        ),
      )),
    );
  }
}
