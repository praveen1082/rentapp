import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusColor: Colors.white12,
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '**Please enter some text. Email is required to Login**';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
