import 'package:flutter/material.dart';
import 'package:flutter_basic/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // debugPaintSizeEnabled = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

