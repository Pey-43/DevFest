import 'package:competition/components/my_button.dart';
import 'package:competition/components/my_textfield.dart';
import 'package:competition/screens/home_control.dart';

import 'package:competition/screens/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obscureText = true;
  void gotoSignUp() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignUp()));
  }

  void logUserIn() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomeControl()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 244, 244),
      appBar: AppBar(
        title: const Text(
          'LOGIN',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "images/logo.png",
                  height: 250,
                ),
              ),
              MyTextfield(
                controller: _usernameController,
                hintText: 'username',
                labelText: 'username',
                obscureText: false,
                prefixIcon: const Icon(Icons.person),
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: _passwordController,
                hintText: 'password',
                labelText: 'password',
                obscureText: obscureText,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off)),
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(onTap: logUserIn, buttontext: 'Login'),
              const Center(
                child: Text(
                  "don't have account?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              MyButton(onTap: gotoSignUp, buttontext: 'Sign up')
            ],
          ),
        ),
      ),
    );
  }
}
