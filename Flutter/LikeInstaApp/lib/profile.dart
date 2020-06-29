import 'package:flutter/material.dart';
import 'package:http/http.dart';

class _ProfileState extends State<Profile> with AutomaticKeepAliveClientMixin<Profile> {
  @override 
  void initState() {
    super.initState();
    print('init Profile');
  }
  @override 
  Widget build(BuildContext context) {
    print('build Profile');
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: LoginScreen(),
      ),
    );
  }
  @override 
  bool get wantKeepAlive => true;
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String id = '';
  String password ='';

  @override 
  Widget build(BuildContext context) {
    return Container( 
      alignment: Alignment.center,
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Container(margin: EdgeInsets.only(top: 200.0)),
            Text('Like Insta'),
            Container(margin: EdgeInsets.only(top: 100.0)),
            idField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget idField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'ID',
        hintText: 'phone number, user name or email',
        fillColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
      onSaved: (String value) {
        id = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
        fillColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),

      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.lightBlue,
      child: Text('Sign In'),
      onPressed: () {
        formKey.currentState.save();
      },      
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override 
  _LoginScreenState createState() => _LoginScreenState();
}