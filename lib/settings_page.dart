import 'package:flutter/material.dart';
import 'dart:math';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: const [
          SizedBox(height: 40,),
          Text('Nastavení comming soon...'),

        ],
      ),
    );
  }
}
