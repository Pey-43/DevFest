import 'package:competition/components/my_button.dart';
import 'package:competition/components/my_textfield.dart';
import 'package:competition/screens/home_control.dart';
import 'package:competition/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  bool obscureText = true;
  void signUserUp() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomeControl()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create account',
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
                controller: _emailController,
                hintText: 'example@example@gmail.com',
                labelText: 'email',
                obscureText: obscureText,
                prefixIcon: const Icon(Icons.email),
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
                height: 10,
              ),
              MyTextfield(
                controller: _confirmpasswordController,
                hintText: 'confirm password',
                labelText: 'confirm password',
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
              MyButton(onTap: signUserUp, buttontext: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
