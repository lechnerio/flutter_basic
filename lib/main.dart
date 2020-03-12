import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // debugPaintSizeEnabled = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginPage(),
    );
  }
}

