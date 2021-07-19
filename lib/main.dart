import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Maintenance());
}

class Maintenance extends StatefulWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  _MaintenanceState createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  bool check = true;
  var color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('images/logo.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maintenance',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          Text(
                            'Box',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[700]),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Log in',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 29,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 250,
                    child: Text(
                      'Hello, welcome to the maintenance shop,please register yourself,asap.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: const BorderSide(
                            color: Colors.black12,
                          ),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: check,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffix: Icon(
                            Icons.remove_red_eye,
                            color: color,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 30, bottom: 10),
                    child: MaterialButton(
                      onPressed: () {},
                      elevation: 5,
                      height: 65,
                      color: Colors.orange[800],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      child: Center(
                          child: Text(
                        'LOG IN',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have a account? ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'SignUp',
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
