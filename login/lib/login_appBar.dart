import 'package:flutter/material.dart';
import './main.dart';
import './login.dart';

void main() => runApp(login_appBar());

class login_appBar extends StatelessWidget {
  const login_appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'login',
        // theme: ThemeData(
        //   //primarySwatch: Colors.teal,
        // ),
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: bar(),
          body: loginMain(),
        ));
  }
}
