import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    this.labelText,
    this.hintText,
    this.height,
    this.width,
    super.key,
  });
  final double? height;
  final double? width;
  final String? labelText;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextFormField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.grey),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey))),
      ),
    );
  }
}

class PasswordTextFieldForm extends StatefulWidget {
  const PasswordTextFieldForm({
    this.labelText,
    super.key,
  });
  final String? labelText;

  @override
  State<PasswordTextFieldForm> createState() => _PasswordTextFieldFormState();
}

class _PasswordTextFieldFormState extends State<PasswordTextFieldForm> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextFormField(
        obscureText: obscureText,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: const TextStyle(color: Colors.grey),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(
                  obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility,
                  color: Colors.grey,
                )),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey))),
      ),
    );
  }
}
