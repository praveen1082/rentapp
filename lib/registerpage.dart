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
  void dispose() {
    firstnamecontroller.dispose();
    lastnamecontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    passwordcontroller.dispose();
    confirmpasswordcontroller.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  var firstname, lastname, email, phone, password, confirmpassword;
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Constants.backIcon)
        ],
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
            Container(
              height: Constants.buttonContainerHeight,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      CircularProgressIndicator();
                      final snackBar = SnackBar(
                        content: Text("Registering User"),
                        duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // final materialBanner = MaterialBanner(content: , actions: actions)
                      print("Success");
                      Navigator.pop(context);
                    } else {
                      print("unsuccess");
                    }
                  },
                  child: Constants.registerbuttonlabel),
            ),
            // Constants.customButton(Constants.registerbuttonlabel),
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
    var temp;
    return TextFormField(
      validator: (text) {
        if (text == null || text.trim().isEmpty) {
          return "**" + labeltext + " " + "cannot be empty **";
        } else {
          if (labeltext == "First Name" || labeltext == "Last Name") {
            if (text.length < 3) {
              return "** " +
                  labeltext +
                  " should contain atleast 3 characters **";
            } else {
              firstname = text;
              return null;
            }
          } else if (labeltext == "Phone") {
            if (text.length < 10 || text.length > 10) {
              return "** " + labeltext + " must be  10 digits **";
            } else {
              lastname = text;
              return null;
            }
          } else if (labeltext == "Email") {
            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(text)) {
              return "** Please enter valid email address **";
            } else {
              email = text;
              return null;
            }
          } else if (labeltext == "Password") {
            if (text.length > 3) {
              password = text;
              temp = password;
              print(temp);
              return null;
            } else {
              return "** Password must contain atleast 3 characters **";
            }
          } else if (labeltext == "Confirm Password") {
            // print("i am confirm password: " + temp);
            if (text == password) {
              confirmpassword = text;
              return null;
            } else {
              return "** Does not match with password. please retype that matches the password **";
            }
          } else {
            return null;
          }
        }
      },
      controller: controller,
      decoration: InputDecoration(
        labelText: labeltext,
      ),
    );
  }
}
