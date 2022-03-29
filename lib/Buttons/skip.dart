import 'package:flutter/material.dart';
class skip extends StatelessWidget{
  Widget build(BuildContext context) {
      return OutlinedButton(
        onPressed: () {
          print('Received click');
        },
        child: const Text('SKIP',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
      );
    }
}