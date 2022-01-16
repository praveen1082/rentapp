import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
          Constants.smallSizedBoxHorizontal,
          Constants.registerPageTextFormBuilder(
              Constants.lastNameLabelRegisterPage),
          Constants.smallSizedBoxHorizontal,
          Constants.registerPageTextFormBuilder(
              Constants.emailLabelRegisterPage),
          Constants.smallSizedBoxHorizontal,
          Constants.registerPageTextFormBuilder(
              Constants.phoneLabelRegisterPage),
          Constants.smallSizedBoxHorizontal,
          Constants.registerPageTextFormBuilder(
              Constants.passwordLabelRegisterPage),
          Constants.smallSizedBoxHorizontal,
          Constants.registerPageTextFormBuilder(
              Constants.confirmPasswordLabelRegisterPage),
          Constants.bigSizedBoxHorizontal,
          Constants.customButton(Constants.registerbuttonlabel),
        ],
      ),
    );
  }
}
