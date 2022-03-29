import 'package:flutter/material.dart';
import 'package:untitled/Buttons/skip.dart';
import 'package:untitled/Buttons/textfieldbutton.dart';
import 'package:untitled/fieldboxes/email%20&pass.dart';
import 'package:untitled/socialmedia/socialmedias.dart';
import 'package:untitled/socialmedia/using.dart';

class signin extends StatefulWidget {
  String a = "https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png";
  String b = "https://image.flaticon.com/icons/png/512/124/124021.png";
  String c = "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-vector-graphic-pixabay-15.png";
  String d = "https://secure.webtoolhub.com/static/resources/icons/set165/e4f3ee8c.png";

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  //String c;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Container(
              height: MediaQuery.of(context).size.height * 0.35,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                signinlogo(),
               // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                about(),
                container(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Using(),
                ),
                socialmediacontainer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                skip(),

              ],
            ),
            Positioned(
              left:15,
              top: -650,
              bottom: 0,

              child: IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.white70),
                onPressed: () => Navigator.of(context).pop(),
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(children: [
                      signinfield(),
                    ])),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget socialmediacontainer() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.9,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      socialmedias(c:widget.a,),
                      socialmedias(c:widget.b,),
                      socialmedias(c:widget.c,),
                      socialmedias(c: widget.d),
                ])),
          ),
        ),
      ],
    );
  }

 Widget signinlogo() {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [

            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Image.network(
                      "https://www.iconsdb.com/icons/preview/violet/pie-chart-xxl.png",
                      width: 10.0,
                      height: 10.0,
                      fit: BoxFit.contain),
                ),
              ),
            ),


          ],
    );
  }

 Widget about() {
   return Padding(
     padding: const EdgeInsets.all(20.0),
     child: Column(
       children: [
         Row(
           children: [
             Text("Sign In",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.white),),
           ],
         ),
         SizedBox(height: 20.0,),
         Row(
           children: [
             Text("Sign In to discover Amazing thing near\nAndroid You",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
           ],
         ),
       ],
     ),
   );
 }
}
