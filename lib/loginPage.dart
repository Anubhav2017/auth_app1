import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auth_app1/main.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width:deviceWidth,
            height:deviceHeight*0.6,
            decoration: BoxDecoration(
              color:Colors.white,
              image: DecorationImage(
                  image :AssetImage("assets/sign_in_cover.png"),
                  fit:BoxFit.cover
              ),
            ),

            child:Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.fromLTRB(0,0.1*deviceHeight,0.18*deviceWidth,0.02*deviceHeight),
                child:Text(
                  'Sign Up!',
                  textAlign: TextAlign.left,
                  style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, decoration:TextDecoration.none),
                )
                ),
                Padding(
                    padding:EdgeInsets.fromLTRB(0.07*deviceWidth,0,0,0.1*deviceHeight),
                child:Text(
                  'Choose an option to log in to an existing account or create a new one',
                  style:TextStyle(color: Colors.white, decoration:TextDecoration.none,fontSize: 15),
                  textAlign: TextAlign.left
                )
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0.13*deviceHeight, 0,0),
                    child:Text(
                        "It's easier to sign up now",
                        textAlign: TextAlign.center,
                        style: TextStyle(color:Colors.blue,decoration: TextDecoration.none,fontSize: 15)
                    )
                )
                
              ],
            )
        ),
        Container(
            color:Colors.white,
          width:deviceWidth,
          height: deviceHeight*0.4,
          child:Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:EdgeInsets.fromLTRB(0,0,0,0.03*deviceHeight),
              child:_GoogleSignInButton(),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(0,0,0,0),
              child:_FacebookSignInButton(),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(0.1*deviceWidth,0.05*deviceHeight,0.1*deviceWidth,0),
                child:Text(
                  "* by logging in you are agreeing to our Terms and Conditions and Privacy Policy",
                  style:TextStyle(color: Colors.blue, decoration: TextDecoration.none, fontSize: 15)
                )
              )
            ],

            
          )

        )


      ],




    );
  }
}

Widget _GoogleSignInButton() {
  return OutlineButton(
    splashColor: Colors.grey,
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    highlightElevation: 0,
    borderSide: BorderSide(color: Colors.grey),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _FacebookSignInButton() {
  return FlatButton(
    color: Colors.blue,
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage("assets/fb.png"), height: 35.0),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Facebook',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),

  );
}