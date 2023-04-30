import 'package:flutter/material.dart';
import './body.dart';

void main() => runApp(login());

class login extends StatelessWidget {
  const login({super.key});

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
          body: main_page(),
        ));
  }
}

AppBar bar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Color.fromARGB(255, 153, 193, 226),
    title: Text(
      'ABC College',
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'Teko',
          wordSpacing: 3,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.double,
          shadows: [Shadow(offset: Offset(0, 1))]),
    ),
  );
}
