import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:courierapp/home.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new Start(),
        title: new Text(
          'Welcome In SplashScreen',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Color.fromRGBO(251, 185, 44, 1),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.white);
  }
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
//      MaterialApp(
//      title: 'Loading Page',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home:
        new Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color.fromRGBO(251, 185, 44, 1),
      body: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Column(
      children: [
        SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 100.0),
            alignment: Alignment.center,
            child: Text(
              'Cargo24/7',
              style: TextStyle(
                fontFamily: 'Roboto Mono',
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 150.0),
              width: 1500.0,
              height: 1000.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0)),
              ),
              child: SafeArea(
                child: Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      Text(
                        "Sign in using your phone number",
                        style: TextStyle(
                          fontFamily: 'Roboto Mono',
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15.0),
                        child: Text("Phone number",
                            style: TextStyle(
                              fontFamily: 'Roboto Mono',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ),
                      Container(
                        width: 350.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Enter Phone number',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontFamily: 'Roboto Mono',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      Container(
                        width: 350.0,
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter Password'),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 400.0,
                        height: 50.0,
//                decoration: BoxDecoration(
//                    borderRadius:
//                        BorderRadius.circular(topLeft: Radius.circular(50.0))),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                bottomRight: Radius.circular(50.0)),
                          ),
                          color: Color.fromRGBO(251, 185, 44, 1),
                          onPressed: () {
                            // Validate returns true if the form is valid, otherwise false.
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
//
//                              Scaffold.of(context).showSnackBar(
//                                  SnackBar(content: Text('Processing Data')));
                            }
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontFamily: 'Roboto Mono',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Or continue with',
                        style: TextStyle(
                          fontFamily: 'Roboto Mono',
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 500.0,
                        height: 50.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0))),
                          color: Color.fromRGBO(206, 44, 63, 1),
                          onPressed: () {
                            // Validate returns true if the form is valid, otherwise false.
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.

//                              Scaffold.of(context).showSnackBar(
//                                  SnackBar(content: Text('Processing Data')));
                            }
                          },
                          child: Text('Google'),
                        ),
                      ),
                    ])),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
