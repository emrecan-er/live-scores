import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  late final bool obscureText;
  late final String hint;
  CustomFormField({required this.hint, required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        onChanged: (v) {},
        obscureText: obscureText,
        autofocus: false,
        style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Color(0xff50ded0),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff50ded0), width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white, fontSize: 13),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
