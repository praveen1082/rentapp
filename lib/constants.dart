import 'package:flutter/material.dart';

class Constants {
  static const loginPageAppBarTitle = "Login Page";
  static const appbarElevation = 0.0;
  static const centerappbarTitle = true;
  static const wholePagePadding = EdgeInsets.all(8.0);
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
  static const VisibilityIcon = Icon(Icons.visibility);
  static const VisibilityoffIcon = Icon(Icons.visibility_off);
  static const EmailIconLoginPage = Icon(Icons.email);
  static const PasswordIconLoginPage = Icon(Icons.password);
  static const divider = Divider();
  static const buttonContainerHeight = 50.0;
  static const nulloremptyemailmsg =
      "**Please enter some text. Email is required to Login**";
  static const emaillabeltext = "Email";
  static const passwordlabeltext = "Password";
  static const nulloremptypasswordmsg =
      "**Please enter password. password is required to Login**";
  static const loginButtonText = Text('Login');
  static const registerButtonText = Text('Sign Up!');
  static const loginFaceBookButtonText = Text('Login with FaceBook');
  static const loginGoogleButtonText = Text('Login with Google');
  static const loginoptionText = Text('OR');
  static const loginQuestionText = Text("Haven't sign up yet?");
  static Widget socialMediaLoginButton(labeltodisplay) {
    return Container(
      height: Constants.buttonContainerHeight,
      child: ElevatedButton(onPressed: () {}, child: labeltodisplay),
    );
  }

  static const backIcon = Icon(Icons.clear_rounded);
}
