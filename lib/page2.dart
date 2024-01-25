import 'package:flutter/material.dart';
import 'package:flutter2/cards.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('page3');
                },
                icon: Icon(Icons.forward))
          ],
        ),
      ),
    );
  }
}
