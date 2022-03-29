import 'package:flutter/material.dart';
class flatebutton extends StatelessWidget{
 final String value;

  const flatebutton({Key? key, required this.value}) : super(key: key);


  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Align
        (alignment: Alignment.center,
          child: Text(value,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
    );
  }
}