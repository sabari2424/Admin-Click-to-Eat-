import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/API-Services/api_service.dart';
import 'package:untitled/Buttons/flatebutton.dart';
import 'package:untitled/Buttons/textfieldbutton.dart';
import 'package:untitled/model/login_model.dart';
class signupfield extends StatefulWidget{
  // var a;
  @override
  _signupfieldState createState() => _signupfieldState();
}

class _signupfieldState extends State<signupfield> {
  bool _obscureText=true;
  final _formKey = GlobalKey<FormState>();

  String a="";
  dynamic name='',email='',pass='';

  dynamic error1='';
  dynamic error2='';
  dynamic error3='';

  @override

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            fieldbox(
              child: TextFormField(autovalidateMode: AutovalidateMode.always,
                validator: (value) {name=value;
                  if (value!.length>3) {
                    error1='success';
                  }
                  else
                    error1='failed';
                },
                onChanged: (value){},
                cursorColor: Colors.black12,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  hintText: 'Enter the Name',
                  border: InputBorder.none,
                ),
              ),
            ),msg(error1),
            //SizedBox(height: 10.0,),
            fieldbox(
              child: TextFormField(
               // obscureText: _obscureText,
                validator: (value) {email=value;
                  if (value!.contains("@")) { error2="success";}
                  else
                    error2='failed';
                },
                onChanged: (value){},
                cursorColor: Colors.black12,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),msg(error2),
            //SizedBox(height: 10.0,),
            fieldbox(
              child: TextFormField(
                obscureText: _obscureText,
                validator: (value) {pass=value;
                  if (value!.length>3) {
                      error3="success";
                    }
                  else
                    error3='failed';
                },
                onChanged: (value){},
                cursorColor: Colors.black12,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(onTap: (){_toggle();},
                      child: Icon(_obscureText?Icons.visibility:Icons.visibility_off,color: Colors.grey,)),
                ),
              ),
            ),msg(error3),
           // SizedBox(height: 20.0,),
            GestureDetector(onTap: (){setState(() {});{
                if( _formKey.currentState!.validate()){
                  print(name);
                  print(email);
                  print(pass);
                  register(name,email,pass);}
            }
            },
                child: flatebutton(value: "Sign Up")),
            SizedBox(height: 20.0,),
            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
              Text("Accept the terms and condition and\n               Agree the policy",style: TextStyle(color: Colors.black87,),),
            ],)
          ],
        ),
      ),
    );
  }


  msg(String a) {
    return Align(alignment: Alignment.centerLeft,
      child: Text(
        a,style: TextStyle(fontSize: 10,color: Colors.blueAccent),
      ),
    );
  }

}

Future<void> register(name, email, pass) async {
  var data={
    'name':name,
    'email':email,
    'password':pass,
  };
  var res=await callAPI.signup(data);
  var body=json.decode(res.body);
  print(body);
}