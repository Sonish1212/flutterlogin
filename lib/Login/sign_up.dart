import 'package:fypapplog/Login/Animation/FadeAnimation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fypapplog/Login/NetworkHandler.dart';
import 'package:fypapplog/Login/sign_in.dart';


// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  SignUp({Key key}) : super (key: key);

  @override
  SignupState createState() => SignupState();
}
class SignupState extends State<SignUp>{
  bool vis = true;
  final _globalkey= GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
  TextEditingController _usernameController= TextEditingController();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  String errorText;
  bool validate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.black,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xFF7B2166),
                Color(0xFFF25813),
                Color(0xFFFFCBA8)
              ],
            )
        ),
        child: Form(
          key: _globalkey,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "Sign Up",
                              style:
                              TextStyle(color: Colors.white, fontSize: 40),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        // FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                      ])
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.4,
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: Column(

                                      children: [

                                        TextFormField(
                                          controller: _usernameController,
                                            decoration: InputDecoration(
                                              errorText: validate?null : errorText,

                                                hintText: "Username ",
                                                hintStyle:
                                                TextStyle(color: Colors.grey),
                                                border: InputBorder.none),
                                        validator: (value) {
                                          if (value.isEmpty)

                                            return " username can't be empty";
                                          return null;
                                        }

                                        )
                                      ],

                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),

                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: _emailController,
                                          decoration: InputDecoration(

                                              hintText: "Email ",
                                              hintStyle:
                                              TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                          validator: (value){
                                            if (value.isEmpty)
                                              // ignore: missing_return
                                              return" Email can't be empty";
                                            if (!value.contains("@"))
                                              return "Email is invalid";
                                            return null;
                                          },
                                        )
                                      ],

                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: _passwordController,
                                        validator: (value){
                                          if (value.isEmpty)
                                            // ignore: missing_return
                                            return" Password can't be empty";
                                          if (value.length<=8)
                                            return "Password is invalid";
                                          return null;
                                        },
                                          decoration: InputDecoration(
                                              suffixIcon: IconButton(
                                                icon: Icon(Icons.visibility_off),
                                                onPressed: (){
                                                  setState(() {
                                                    vis = !vis;
                                                  });



                                                },
                                              ),
                                              hintText: "Password",
                                              hintStyle:
                                              TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                          autofocus: false,
                                          obscureText: vis,
                                        )
                                      ],

                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Weight In Kilogram",
                                                hintStyle: TextStyle(color: Colors.grey),
                                                border: InputBorder.none
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty)
                                                return " Wieght can't be empty";
                                              return null;
                                            }
                                        )
                                      ],

                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Age",
                                                hintStyle: TextStyle(color: Colors.grey),
                                                border: InputBorder.none
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty)
                                                return " Age can't be empty";
                                              return null;
                                            }
                                        )
                                      ],

                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(height: 40),
                        FadeAnimation(
                            1.6,
                            SizedBox(
                              height: 50,
                              width: 700,
                              // margin: EdgeInsets.symmetric(horizontal: 50),
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.red)
                                  ),
                                  color: Colors.red,
                                  onPressed: () async {
                                    await checkuser();
                                    if (_globalkey.currentState.validate() && validate){

                                      Map<String,String>data={
                                        "Username": _usernameController.text,
                                        "email": _emailController.text,
                                        "password": _passwordController.text
                                      };
                                      print(data);
                                      await networkHandler.post("/user/register",data);
                                    }


                                  },

                                  child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color:Colors.white),)),

                            )),

                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.7,
                            Text(
                              "OR",
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(1.6,
                          SizedBox(
                          height: 20,

                          child: Center(

                          child: new RichText(
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text: 'Already Have an Account?  ',
                                  style: new TextStyle(color: Colors.black),
                                ),
                                new TextSpan(
                                  text: 'Sign In',
                                  style: new TextStyle(color: Colors.blue),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
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
    )
    );


  }
  checkuser()async{
    if(_usernameController.text.length==0)
    {
      setState(() {
        validate=false;
        errorText="Username can't be empty";

      });

    }
    else{
      var response= await networkHandler.get("/user/checkUsername/${_usernameController.text}");
      if (response['Status'])
      {
        setState(() {
          validate=false;
          errorText="Username can't be empty";

        });
      }
      else{
        setState(() {
          validate=true;
          errorText="Username can't be empty";

        });
      }
    }
  }
}
