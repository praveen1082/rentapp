import 'package:flutter/material.dart';
import 'package:rentapp/apiservice.dart';
import 'package:rentapp/constants.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  ApiService service = ApiService();
  final _formKey = GlobalKey<FormState>();
  var firstname, lastname, email, phone, password, confirmpassword;
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();

    service = ApiService();
  }

  @override
  void dispose() {
    firstname.dispose();
    lastname.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    confirmpassword.dispose();
    firstnamecontroller.dispose();
    lastnamecontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    passwordcontroller.dispose();
    confirmpasswordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            // registerPageTextFormBuilder(
            //     Constants.firstNameLabelRegisterPage, firstnamecontroller),
            TextFormField(
              controller: firstnamecontroller,
              decoration: InputDecoration(
                  labelText: Constants.firstNameLabelRegisterPage),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "**" +
                      Constants.firstNameLabelRegisterPage +
                      "cannot be empty **";
                } else {
                  if (text.length < 3) {
                    return "** First Name should contain at least 3 characters";
                  } else {
                    firstname = text;
                    return null;
                  }
                }
              },
            ),

            Constants.smallSizedBoxHorizontal,
            TextFormField(
              controller: lastnamecontroller,
              decoration: InputDecoration(
                  labelText: Constants.lastNameLabelRegisterPage),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "**" +
                      Constants.lastNameLabelRegisterPage +
                      "cannot be empty **";
                } else {
                  if (text.length < 3) {
                    return "** last Name should contain at least 3 characters";
                  } else {
                    lastname = text;
                    return null;
                  }
                }
              },
            ),

            Constants.smallSizedBoxHorizontal,
            TextFormField(
              controller: emailcontroller,
              decoration:
                  InputDecoration(labelText: Constants.emailLabelRegisterPage),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "**" +
                      Constants.emailLabelRegisterPage +
                      "cannot be empty **";
                } else {
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(text)) {
                    return "** Please insert a valid email address **";
                  } else {
                    email = text;
                    return null;
                  }
                }
              },
            ),
            Constants.smallSizedBoxHorizontal,
            TextFormField(
              controller: phonecontroller,
              decoration:
                  InputDecoration(labelText: Constants.phoneLabelRegisterPage),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "**" +
                      Constants.phoneLabelRegisterPage +
                      "cannot be empty **";
                } else {
                  if (text.length != 10 || text.length > 10) {
                    return "** Please insert valid phone number**";
                  } else {
                    phone = text;
                    return null;
                  }
                }
              },
            ),
            Constants.smallSizedBoxHorizontal,
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  labelText: Constants.passwordLabelRegisterPage),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "**" +
                      Constants.passwordLabelRegisterPage +
                      "cannot be empty **";
                } else {
                  if (text.length < 3) {
                    return "** Password must contain atleast 3 characters **";
                  } else {
                    password = text;
                    return null;
                  }
                }
              },
            ),
            Constants.smallSizedBoxHorizontal,
            TextFormField(
              controller: confirmpasswordcontroller,
              decoration: InputDecoration(
                  labelText: Constants.confirmPasswordLabelRegisterPage),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "**" +
                      Constants.confirmPasswordLabelRegisterPage +
                      "cannot be empty **";
                } else {
                  if (text != password) {
                    return "** Passwords does not match **";
                  } else {
                    confirmpassword = text;
                    return null;
                  }
                }
              },
            ),
            Constants.bigSizedBoxHorizontal,
            Container(
              height: Constants.buttonContainerHeight,
              child: ElevatedButton(
                  onPressed: () {
                    password != null
                        ? print(
                            "printing value of password from here: " + password)
                        : print("Password is null");
                    if (_formKey.currentState!.validate()) {
                      CircularProgressIndicator();
                      final snackBar = SnackBar(
                        content: Text("Registering User"),
                        duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      //Future.delayed(Duration(seconds: 5));

                      // final materialBanner = MaterialBanner(content: , actions: actions)
                      // print("Success");
                      //Navigator.pop(context);
                    } else {
                      final snackBar = SnackBar(
                        content: Text("Validation error"),
                        duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    // print(confirmpassword +
                    //     ":" +
                    //     password +
                    //     ":" +
                    //     phone +
                    //     ":" +
                    //     firstname +
                    //     ":" +
                    //     lastname +
                    //     ":" +
                    //     phone +
                    //     ":" +
                    //     email);
                    service
                        .register(phone, firstname, lastname, email, password,
                            confirmpassword)
                        .then((value) {
                      if (value.success) {
                        final snackBar = SnackBar(
                          content: Text("Registered Successfully"),
                          duration: Duration(seconds: 2),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Future.delayed(Duration(seconds: 2));
                        Navigator.pop(context);
                      } else {
                        print("object>>>?????????????????????");
                      }
                    });
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
}
