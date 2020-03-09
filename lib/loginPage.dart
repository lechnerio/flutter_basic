import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Sign in')),

      body: Container(

        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            GoogleSignInButton(
              onPressed: (){},
              darkMode: false,
            ),

            FacebookSignInButton(
              onPressed: (){},
            ),

          ],
        ),
      )
    );

  }
}