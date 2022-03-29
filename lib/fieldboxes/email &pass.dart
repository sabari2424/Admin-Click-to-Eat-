import 'package:flutter/material.dart';
import 'package:untitled/Buttons/flatebutton.dart';
import 'package:untitled/Buttons/textfieldbutton.dart';
import 'package:untitled/model/login_model.dart';
class signinfield extends StatefulWidget{
 // var a;
  @override
  _signinfieldState createState() => _signinfieldState();
}

class _signinfieldState extends State<signinfield> {
bool _obscureText=true;
late LoginRequestModel requestModel;
 @override
 void initState(){
   super.initState();
   requestModel=new LoginRequestModel();
 }

void _toggle() {
  setState(() {
    _obscureText = !_obscureText;
  });
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
      child: Column(
        children: [
          fieldbox(
            child: TextFormField(
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
          ),
          SizedBox(height: 10.0,),
          fieldbox(
            child: TextFormField(
              obscureText: _obscureText,
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
          ),
          SizedBox(height: 20.0,),
          flatebutton(value: "Sign In"),
          SizedBox(height: MediaQuery.of(context).size.height*0.02),
          Row(mainAxisAlignment:MainAxisAlignment.center,children: [
            Text("Forgot Password?",style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),)
          ],)
        ],
      ),
    );
  }
}