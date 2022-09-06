import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:football_app/screens/main_feed.dart';
import 'package:football_app/widgets/button.dart';

import 'package:football_app/widgets/custom_form_field.dart';
import 'package:get/get.dart';

String signedInUsername = '';

class CreateAccount extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF111328),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '⚽',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 15,
              ),
              CustomFormField(hint: 'E-mail', obscureText: false),
              CustomFormField(hint: 'Password', obscureText: true),
              CustomFormField(hint: 'Username', obscureText: false),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Button(
                text: 'Create Account',
                onTap: () {
                  Get.offAll(MainFeed());
                  log('ÇALIŞIYO VALLA');
                },
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
