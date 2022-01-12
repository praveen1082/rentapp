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
          Constants.registerPageTextFormBuilder(
              Constants.firstNameLabelRegisterPage),
          Constants.registerPageTextFormBuilder(
              Constants.lastNameLabelRegisterPage),
          Constants.registerPageTextFormBuilder(
              Constants.emailLabelRegisterPage),
          Constants.registerPageTextFormBuilder(
              Constants.phoneLabelRegisterPage),
          Constants.registerPageTextFormBuilder(
              Constants.passwordLabelRegisterPage),
          Constants.registerPageTextFormBuilder(
              Constants.confirmPasswordLabelRegisterPage),
        ],
      ),
    );
  }
}
