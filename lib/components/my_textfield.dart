import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  final controller;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final suffixIcon;
  final prefixIcon;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    this.suffixIcon,
    required this.prefixIcon,
  });

  @override
  State<MyTextfield> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: const TextStyle(color: Colors.black),
          prefixIcon: widget.prefixIcon,
          prefixIconColor: Colors.blue,
          suffixIcon: widget.suffixIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 237, 235, 235)),
    );
  }
}
