import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: Constants.centerappbarTitle,
        elevation: Constants.appbarElevation,
        actions: [IconButton(onPressed: () {}, icon: Constants.backIcon)],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: Constants.wholePagePadding,
          children: [
            Constants.registerPageTextFormBuilder(
                Constants.firstNameLabelRegisterPage, firstnamecontroller),
            Constants.smallSizedBoxHorizontal,
            Constants.registerPageTextFormBuilder(
                Constants.lastNameLabelRegisterPage, lastnamecontroller),
            Constants.smallSizedBoxHorizontal,
            Constants.registerPageTextFormBuilder(
                Constants.emailLabelRegisterPage, emailcontroller),
            Constants.smallSizedBoxHorizontal,
            Constants.registerPageTextFormBuilder(
                Constants.phoneLabelRegisterPage, phonecontroller),
            Constants.smallSizedBoxHorizontal,
            Constants.registerPageTextFormBuilder(
                Constants.passwordLabelRegisterPage, passwordcontroller),
            Constants.smallSizedBoxHorizontal,
            Constants.registerPageTextFormBuilder(
                Constants.confirmPasswordLabelRegisterPage,
                confirmpasswordcontroller),
            Constants.bigSizedBoxHorizontal,
            Constants.customButton(Constants.registerbuttonlabel),
            Constants.bigSizedBoxHorizontal,
            Row(
              children: const [
                Expanded(child: Constants.divider),
                Constants.smallSizedBoxVertical,
                Constants.loginoptionText,
                Constants.smallSizedBoxVertical,
                Expanded(child: Constants.divider),
              ],
            ),
            Constants.smallSizedBoxHorizontal,
            Constants.customButton(Constants.loginFaceBookButtonText),
            Constants.smallSizedBoxHorizontal,
            Constants.customButton(Constants.loginGoogleButtonText),
            Constants.smallSizedBoxHorizontal,
          ],
        ),
      ),
    );
  }
}
