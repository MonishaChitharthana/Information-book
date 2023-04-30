import 'package:flutter/material.dart';
import 'package:login/details.dart';

class loginMain extends StatefulWidget {
  @override
  LoginBody createState() => LoginBody();
}

class LoginBody extends State<loginMain> {
  // const LoginBody({super.key});

  bool _isVisible = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Enter your details',
                    style: TextStyle(
                      fontFamily: 'Play',
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                        labelText: 'Enter name',
                        hintText: 'Monisha',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        //^is the starting value and ends $ nad condition are in single quotes
                        //value! => means value not null
                        return "Enter correct value";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'email',
                        border: OutlineInputBorder(),
                        hintText: 'monisha@gmail.com',
                        prefixIcon: Icon(Icons.email)),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        // \w means all alphanet and non alphabets
                        return "Enter correct format";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        color: Colors.grey,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter password";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password?'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 240, 171, 194),
                            Color.fromARGB(255, 88, 203, 203)
                          ]),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(SnackBar(content: Second()));
                            // Within the `FirstRoute` widge
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Second()),
                              );
                            }
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontFamily: 'Play',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // child: ElevatedButton(
                        //   onPressed: () {},
                        //   child: Text('hi'),
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Colors.cyan[500],
                        //     shadowColor: Colors.black,
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
