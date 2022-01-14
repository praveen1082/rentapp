import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var passwordvisibilityicon = Icon(Icons.visibility_off);

  var passwordIsVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: Constants.appbarElevation,
        // backgroundColor: Colors.amber,
        centerTitle: Constants.centerappbarTitle,
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: Constants.wholePagePadding,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    focusColor: Colors.white12,
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '**Please enter some text. Email is required to Login**';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: !passwordIsVisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordIsVisible = passwordIsVisible ? false : true;
                          passwordvisibilityicon = passwordIsVisible
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off);
                        });
                      },
                      icon: passwordvisibilityicon,
                    ),
                    focusColor: Colors.white12,
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '**Please enter password. Password is required to Login**';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Login')),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("OR"),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Haven't sign up yet?"),
                  const SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Sign Up!'))
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Login with FaceBook')),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Login with Google')))
            ],
          ),
        ),
      ),
    );
  }
}
