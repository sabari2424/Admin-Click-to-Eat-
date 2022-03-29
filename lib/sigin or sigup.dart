import 'package:flutter/material.dart';
import 'package:untitled/Buttons/skip.dart';

import 'modules/loginpage.dart';
import 'modules/signup.dart';

class siginorsigup extends StatefulWidget {
  @override
  _siginorsigupState createState() => _siginorsigupState();
}

class _siginorsigupState extends State<siginorsigup> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
          ),
          Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height*0.18,),
              icon(),
              SizedBox(height:MediaQuery.of(context).size.height*0.01,),
              container(),
              skip(),


            ],
          )
        ],
      ),
    );
  }

  Widget icon() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(width: 120,height: 120,
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Image.network("https://www.iconsdb.com/icons/preview/violet/pie-chart-xxl.png",width:20.0,height: 20.0,fit: BoxFit.contain),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text("APP ICON",
              style: TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
  Widget container() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius:BorderRadius.all(Radius.circular(20)),
                child: Container(color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.9,
                  child:Padding(
                    padding: const EdgeInsets.only(top: 35,),
                    child: Column(children:[
                      Text("Welcome to App Name.",style: TextStyle(fontWeight: FontWeight.bold,fontSize:22),),
                      SizedBox(height: 10,),
                      Text("Discover Amazing Thing Near Around You.",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16,color: Colors.black45 ),),
                      SizedBox(height: 50,),

                      GestureDetector(onTap:(){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signin()),
                      );},child: signinbutton()),

                      SizedBox(height: 15,),

                      GestureDetector(
                          onTap:(){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );},
                          child: signupbutton()),

                      SizedBox(height: 50,),
                      Using(),

                      SizedBox(height: 50,),
                      socialmedia(),
                    ]
                    ),
                  )
                    
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget signinbutton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Align
            (alignment: Alignment.center,
              child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
        )
      ],
    );
  }
  Widget signupbutton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.deepPurpleAccent)
          ),
          child: Align
            (alignment: Alignment.center,
              child: Text("Sign Up",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 18,fontWeight: FontWeight.bold),)),
        )
      ],
    );
  }
  Widget Using() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: Colors.black,height:1,width:MediaQuery.of(context).size.width*0.2),
        Text("Or Connect Using"),
        Container(color: Colors.black,height:1,width:MediaQuery.of(context).size.width*0.2),
      ],);
  }
  Widget socialmedia(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        options("https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png"),
        options("https://image.flaticon.com/icons/png/512/124/124021.png"),
        options("https://www.freepnglogos.com/uploads/google-logo-png/google-logo-vector-graphic-pixabay-15.png"),
        options("https://secure.webtoolhub.com/static/resources/icons/set165/e4f3ee8c.png"),
      ],
    );
  }
 Widget options(String c){
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
