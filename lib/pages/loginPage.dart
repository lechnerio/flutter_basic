import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isAuth = false;
  PageController pageController;

  @override
  initState(){
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((account){
      // handleSignin(account);
    }, onError: (err){
      print('Error signing in: $err');
    });

    googleSignIn.signInSilently(suppressErrors: false).then(
      (account){
        //handleSignin(account);
      }
    ).catchError((err){
      print('Error signing in: $err');
    });
  }

  handleSignin(GoogleSignInAccount account){
    if(account != null){
      print('User signed in! $account');
      setState(() {
        isAuth = true;
      });
    }else{
      setState(() {
        isAuth = false;
      });
    }
  }

  login(){
    googleSignIn.signIn();
  }

  logout(){
    googleSignIn.signOut();
  }

  Scaffold buildAuthScreen(){
    // return RaisedButton(
    //   child: Text('Logout'),
    //   onPressed: logout,
    // );

    return Scaffold(
      body: PageView(
        children: <Widget>[
          // TODO Pages
        ],

        controller: pageController,
      )
    );

  }

  Scaffold buildUnAuthScreen(){
    return Scaffold(
      body: Container(

        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              
            ],
          )
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
          
            Text('Sign in'),
            GoogleSignInButton(
              darkMode: false,
              onPressed: login(),
            )


          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuthScreen() : buildUnAuthScreen();
  }
}