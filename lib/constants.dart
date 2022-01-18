import 'package:flutter/material.dart';

class Constants {
  static const loginPageAppBarTitle = "Login Page";
  static const registerPageTitle = "Register Page";
  static const nulloremptyemailmsg =
      "**Please enter some text. Email is required to Login**";
  static const emaillabeltext = "Email";
  static const passwordlabeltext = "Password";
  static const nulloremptypasswordmsg =
      "**Please enter password. password is required to Login**";
  static const firstNameLabelRegisterPage = "First Name";
  static const lastNameLabelRegisterPage = "Last Name";
  static const emailLabelRegisterPage = "Email";
  static const phoneLabelRegisterPage = "Phone";
  static const passwordLabelRegisterPage = "Password";
  static const confirmPasswordLabelRegisterPage = "Confirm Password";
  static const registerbuttonlabel = Text("Register");

  static const loginButtonText = Text('Login');
  static const registerButtonText = Text('Sign Up!');
  static const loginFaceBookButtonText = Text('Login with FaceBook');
  static const loginGoogleButtonText = Text('Login with Google');
  static const registernFaceBookButtonText = Text('Sign-up with FaceBook');
  static const registerGoogleButtonText = Text('Sign-up with Google');
  static const loginoptionText = Text('OR');
  static const loginQuestionText = Text("Haven't sign up yet?");
  static const centerappbarTitle = true;

  static const appbarElevation = 0.0;
  static const wholePagePadding = EdgeInsets.all(8.0);
  static const buttonContainerHeight = 50.0;
  static const bigSizedBoxHorizontal = SizedBox(
    height: 20,
  );
  static const smallSizedBoxHorizontal = SizedBox(
    height: 10,
  );
  static const bigSizedBoxVertical = SizedBox(width: 20);
  static const smallSizedBoxVertical = SizedBox(
    width: 5,
  );
  static const visibilityIcon = Icon(Icons.visibility);
  static const visibilityoffIcon = Icon(Icons.visibility_off);
  static const emailIconLoginPage = Icon(Icons.email);
  static const passwordIconLoginPage = Icon(Icons.password);
  static const backIcon = Icon(Icons.clear_rounded);
  static const divider = Divider();

  static Widget customButton(labeltodisplay) {
    return Container(
      height: Constants.buttonContainerHeight,
      child: ElevatedButton(onPressed: () {}, child: labeltodisplay),
    );
  }

  static Widget registerPageTextFormBuilder(labeltext, controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labeltext,
      ),
    );
  }
}
