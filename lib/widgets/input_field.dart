import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;
  final Stream<String> stream;
  final Function(String) onChanged;
  final  keyboardType;


  InputField({this.icon, this.hint, this.obscure, this.stream, this.onChanged, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: stream,
        builder: (context, snapshot) {
          return TextField(
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 5, right: 30, top: 30, bottom: 30),
                errorText: snapshot.hasError ? snapshot.error : null,
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
                hintText: hint,
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber))),
            style: TextStyle(
              color: Colors.white,
            ),
            obscureText: obscure,
          );
        });
  }
}
