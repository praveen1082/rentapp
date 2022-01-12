import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: Constants.centerappbarTitle,
        elevation: Constants.appbarElevation,
        actions: [IconButton(onPressed: () {}, icon: Constants.backIcon)],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: Constants.wholePagePadding,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: Constants.firstNameLabelRegisterPage,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: Constants.lastNameLabelRegisterPage,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: Constants.emailLabelRegisterPage,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: Constants.phoneLabelRegisterPage,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: Constants.passwordLabelRegisterPage,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: Constants.confirmPasswordLabelRegisterPage,
            ),
          )
        ],
      ),
    );
  }
}
