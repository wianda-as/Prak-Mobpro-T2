import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'FontPoppins'),
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                color: Colors.white,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.asset('images/ps.png'),
                          const TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.account_circle,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Username',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                          ),
                          //Password TextField
                          const TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Password',
                            ),
                            obscureText: true,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                          fixedSize: const Size(30, 10),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Dashboard(),
                                            ));
                                      },
                                      child: const Text('Login',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      )
                    ],
                  ),
                )))));
  }
}
