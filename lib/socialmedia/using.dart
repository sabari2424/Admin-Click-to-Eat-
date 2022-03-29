import 'package:flutter/material.dart';
class Using extends StatelessWidget{
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: Colors.black,height:1,width:MediaQuery.of(context).size.width*0.2),
        Text("Or Connect Using"),
        Container(color: Colors.black,height:1,width:MediaQuery.of(context).size.width*0.2),
      ],);
  }
}