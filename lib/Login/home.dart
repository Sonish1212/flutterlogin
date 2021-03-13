import 'package:fypapplog/Login/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:fypapplog/Login/sign_in.dart';
import 'package:fypapplog/Login/sign_up.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(Colors.blueGrey.withOpacity(0.3), BlendMode.color),
            image: AssetImage("assets/images/290742.jpg"),
            fit: BoxFit.cover,


          ),
        ),

        /*\]]decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color(0xFF7B2166),
              Color(0xFFF25813),
              Color(0xFFFFCBA8)
            ])),*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 150),
            Text.rich(TextSpan(
                text: 'Work it out',
                style: TextStyle(
                    color: Colors.white60.withOpacity(0.1),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
               )),
            SizedBox(height: 200),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      FadeAnimation(
                          1.6,
                          Container(
                              height: 50,
                              width: 300,

                              // margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.lightGreen),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))),
                      SizedBox(
                        height: 40,
                      ),
                      FadeAnimation(
                          1.6,
                          Container(
                              height: 50,
                              width: 300,
                              // margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ))),
                    ],
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
