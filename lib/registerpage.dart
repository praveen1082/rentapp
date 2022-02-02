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
            registerPageTextFormBuilder(
                Constants.firstNameLabelRegisterPage, firstnamecontroller),
            Constants.smallSizedBoxHorizontal,
            registerPageTextFormBuilder(
                Constants.lastNameLabelRegisterPage, lastnamecontroller),
            Constants.smallSizedBoxHorizontal,
            registerPageTextFormBuilder(
                Constants.emailLabelRegisterPage, emailcontroller),
            Constants.smallSizedBoxHorizontal,
            registerPageTextFormBuilder(
                Constants.phoneLabelRegisterPage, phonecontroller),
            Constants.smallSizedBoxHorizontal,
            registerPageTextFormBuilder(
                Constants.passwordLabelRegisterPage, passwordcontroller),
            Constants.smallSizedBoxHorizontal,
            registerPageTextFormBuilder(
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

  Widget registerPageTextFormBuilder(labeltext, controller) {
    return TextFormField(
      validator: _validator(controller.text, labeltext),
      controller: controller,
      decoration: InputDecoration(
        labelText: labeltext,
      ),
    );
  }

  _validator(text, labeltext) {
    var pass;
    if (text == null || text.trim().isEmpty) {
      return "**" + labeltext + " " + "cannot be empty **";
    } else {
      if (labeltext == "First Name" || labeltext == "Last Name") {
        if (text.length < 3) {
          return "** " + labeltext + " should contain atleast 3 characters **";
        } else {
          return null;
        }
      } else if (labeltext == "Phone") {
        if (text.length < 10 || text.length > 10) {
          return "** " + labeltext + " must be  10 digits **";
        } else {
          return null;
        }
      } else if (labeltext == "Email") {
        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(text)) {
          return "** Please enter valid email address **";
        } else {
          return null;
        }
      } else if (labeltext == "Password") {
        if (text.length > 3) {
          return null;
        } else {
          pass = text;
          return "** Password must contain atleast 3 characters **";
        }
      } else if (labeltext == "Confirm Password") {
        if (text != pass) {
          return "** Does not match with password. please retype that matches the password **";
        }
      }
    }
  }
}
