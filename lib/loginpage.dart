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
  var passwordvisibilityicon;

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
                    labelText: 'Email',
                    prefixIcon: Constants.EmailIconLoginPage),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '**Please enter some text. Email is required to Login**';
                  }
                  return null;
                },
              ),
              Constants.smallSizedBoxHorizontal,
              TextFormField(
                obscureText: !passwordIsVisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordIsVisible = passwordIsVisible ? false : true;
                          passwordvisibilityicon = passwordIsVisible
                              ? Constants.VisibilityIcon
                              : Constants.VisibilityoffIcon;
                        });
                      },
                      icon: passwordvisibilityicon,
                    ),
                    labelText: 'Password',
                    prefixIcon: Constants.PasswordIconLoginPage),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '**Please enter password. Password is required to Login**';
                  }
                  return null;
                },
              ),
              Constants.bigSizedBoxHorizontal,
              Container(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Login')),
              ),
              Constants.bigSizedBoxHorizontal,
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Constants.smallSizedBoxVertical,
                  Text("OR"),
                  Constants.smallSizedBoxVertical,
                  Expanded(child: Divider()),
                ],
              ),
              Constants.smallSizedBoxHorizontal,
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
              Constants.smallSizedBoxHorizontal,
              const Divider(),
              Constants.smallSizedBoxHorizontal,
              Container(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Login with FaceBook')),
              ),
              Constants.smallSizedBoxHorizontal,
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
