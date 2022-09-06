import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:football_app/screens/create_account.dart';

import 'package:football_app/widgets/button.dart';
import 'package:football_app/widgets/custom_form_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xff152f34),
      Color(0xff50ded0),
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111328),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Live Scores',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                            color: Color(0xff50ded0),
                            fontSize: 60.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              CustomFormField(
                hint: 'E-mail',
                obscureText: false,
              ),
              CustomFormField(
                hint: 'Password',
                obscureText: true,
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Button(
                text: 'Login',
                onTap: () {},
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\n\nNeed Account?   ',
                    ),
                    TextSpan(
                        text: 'Create Account\n\n\n',
                        style: linkedStyle(),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(CreateAccount());
                          }),
                    TextSpan(
                      text: 'Meet the Developer ',
                    ),
                    TextSpan(
                        text: ' Contact Me',
                        style: linkedStyle(),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms of Service"');
                          }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle linkedStyle() {
    return TextStyle(
      color: Color(0xff50ded0),
      fontWeight: FontWeight.bold,
    );
  }
}
