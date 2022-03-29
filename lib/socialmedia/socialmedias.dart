import 'package:flutter/material.dart';
class socialmedias extends StatelessWidget{
 final String c;
 socialmedias({Key? key,required this.c}):super(key:key);

  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          height: 50.0,width: 50.0,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Image.network(c),
        ),
      ),
    );
  }
}