import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fieldbox extends StatelessWidget{
final Widget child;

  const fieldbox({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        //height: 50.0,
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.white12)
        ),
        child: child,
      ),
    );
  }


}