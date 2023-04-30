import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import './login_appBar.dart';
import './sign_appBar.dart';

class main_page extends StatelessWidget {
  const main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 120),
        child: Column(
          children: <Widget>[
            Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_Q895iE.json',
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Information Book',
                style: TextStyle(
                  fontFamily: 'Play',
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome!',
              style: TextStyle(
                fontFamily: 'Play',
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sign_appBar()));
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 153, 193, 226),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login_appBar()),
                    );
                  },
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 153, 193, 226),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
