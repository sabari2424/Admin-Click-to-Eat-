import 'package:flutter/material.dart';
import 'sigin or sigup.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'login Page',
      debugShowCheckedModeBanner:false,
      home: siginorsigup(),
    );
  }

}