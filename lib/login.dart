import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginRegisterPage();
  }
}

enum FormType { login, register }

class _LoginRegisterPage extends State<LoginRegisterPage> {
  //state_class

  //these var can change by user
  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";

  //methods
  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else
      return false;
  }

  void moveToRegister() {
    formKey.currentState.reset(); // removes values from text fields
    setState(() {
      _formType = FormType.register; //goto Register
    });
  }

  void moveToLogin() {
    formKey.currentState.reset(); // removes values from text fields
    setState(() {
      _formType = FormType.login; //goto Login
    });
  }

  //design
  @override
  Widget build(BuildContext context) {
    //build of state
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Vichinoti: Login & Register")),
      backgroundColor: Colors.white,
      body: new Container(
        margin: EdgeInsets.all(20.0), //border from screen
        child: new Form(
            key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createInputs() + createButtons(),
            )),
      ),
    );
  }

  List<Widget> createButtons() {
    if (_formType == FormType.login) {
      return [
        new RaisedButton(
          child: new Text("Login",
              style: TextStyle(
                fontSize: 20.0,
              )),
          textColor: Colors.white,
          color: Colors.lightBlue,
          onPressed: validateAndSave,
        ),
        new FlatButton(
          child: new Text("Not have an Account? Sign Up!",
              style: TextStyle(
                fontSize: 15.0,
              )),
          textColor: Colors.white,
          color: Colors.red,
          onPressed: moveToRegister,
        )
      ];
    } else {
      return [
        new RaisedButton(
          child: new Text("Create Account",
              style: TextStyle(
                fontSize: 20.0,
              )),
          textColor: Colors.white,
          color: Colors.lightBlue,
          onPressed: validateAndSave,
        ),
        new FlatButton(
          child: new Text("Already have an Account? Login!",
              style: TextStyle(
                fontSize: 15.0,
              )),
          textColor: Colors.white,
          color: Colors.red,
          onPressed: moveToLogin,
        )
      ];
    }
  }

  Widget logo() {
    return new Hero(
        tag: 'hero',
        child: new CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 100,
          child: Image.asset('assets/images/logo.png'),
        ));
  }

  List<Widget> createInputs() {
    return [
      SizedBox(
        height: 20.0,
      ),
      logo(),
      SizedBox(
        height: 20.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
        validator: (value) {
          return value.isEmpty ? "Email can't be empty." : null;
        },
        onSaved: (value) {
          return _email = value;
        },
      ),
      SizedBox(
        height: 10.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password'),
        obscureText: true,
        validator: (value) {
          return value.isEmpty ? "Password can't be empty." : null;
        },
        onSaved: (value) {
          return _password = value;
        },
      ),
      SizedBox(
        height: 20.0,
      ),
    ];
  }
}
