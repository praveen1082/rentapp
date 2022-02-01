import 'package:flutter/material.dart';
import 'package:rentapp/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var passwordvisibilityicon = Constants.VisibilityIcon;

  var passwordIsVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: Constants.appbarElevation,
        // backgroundColor: Colors.amber,
        centerTitle: Constants.centerappbarTitle,
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: Constants.wholePagePadding,
          child: ListView(
            shrinkWrap: true,
            children: [
              Constants.bigSizedBoxHorizontal,
              TextFormField(
                decoration: const InputDecoration(
                    labelText: Constants.emaillabeltext,
                    prefixIcon: Constants.EmailIconLoginPage),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return Constants.nulloremptyemailmsg;
                  }
                  return null;
                },
              ),
              Constants.smallSizedBoxHorizontal,
              TextFormField(
                obscureText: !passwordIsVisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordIsVisible = passwordIsVisible ? false : true;
                          passwordvisibilityicon = passwordIsVisible
                              ? Constants.VisibilityIcon
                              : Constants.VisibilityoffIcon;
                        });
                      },
                      icon: passwordvisibilityicon,
                    ),
                    labelText: Constants.passwordlabeltext,
                    prefixIcon: Constants.PasswordIconLoginPage),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return Constants.nulloremptypasswordmsg;
                  }
                  return null;
                },
              ),
              Constants.bigSizedBoxHorizontal,
              Container(
                height: Constants.buttonContainerHeight,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Constants.loginButtonText,
                ),
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Constants.loginQuestionText,
                  Constants.bigSizedBoxVertical,
                  ElevatedButton(
                      onPressed: () {}, child: Constants.registerButtonText)
                ],
              ),
              Constants.smallSizedBoxHorizontal,
              Constants.divider,
              Constants.smallSizedBoxHorizontal,
              Constants.socialMediaLoginButton(
                  Constants.loginFaceBookButtonText),
              Constants.smallSizedBoxHorizontal,
              Constants.socialMediaLoginButton(Constants.loginGoogleButtonText),
            ],
          ),
        ),
      ),
    );
  }
}
