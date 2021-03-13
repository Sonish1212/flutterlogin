import 'package:fypapplog/Login/Animation/FadeAnimation.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fypapplog/Login/sign_up.dart';



class SignIn extends StatefulWidget {
  SignIn({Key key}) : super (key: key);

  @override
  SignInState createState() => SignInState();
}
class SignInState extends State<SignIn>{
  bool vis = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color(0xFF7B2166),
                  Color(0xFFF25813),
                  Color(0xFFFFCBA8)
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1, Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 40),)),
                        SizedBox(height: 10,),
                        FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                      ])],
              ),
            ),
            SizedBox(height: 20),

            Expanded(

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),

                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 30,),

                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),

                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                  autofocus: false,
                                  obscureText: true,
                                ),
                              ),




                            ],
                          ),
                        )),



                        SizedBox(height: 40),


                        FadeAnimation(1.6, SizedBox(
                          height: 50,
                          width: 700,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.red)
                              ),
                              color: Colors.red,
                              onPressed: (){},

                              child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color:Colors.white),)),

                        )),

                        // SizedBox(height: 50,),
                        //
                        // FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Colors.black),)),

                        FadeAnimation(1.6,
                        SizedBox(height: 50,
                        child: Center(

                          child: new RichText(
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text: "Don't have an Account?   ",
                                  style: new TextStyle(color: Colors.black),
                                ),
                                new TextSpan(
                                  text: 'Sign Up',
                                  style: new TextStyle(color: Colors.blue),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                                    },
                                ),
                              ],
                            ),
                          ),),),)





                      ],

                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
