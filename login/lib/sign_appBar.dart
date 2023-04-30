import 'package:flutter/material.dart';
import './main.dart';
import 'signIn.dart';

void main() => runApp(sign_appBar());

class sign_appBar extends StatelessWidget {
  const sign_appBar({super.key});

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
          body: signIn(),
        ));
  }
}
