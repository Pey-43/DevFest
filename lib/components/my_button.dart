import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  final Function() onTap;
  final String buttontext;
  const MyButton({super.key, required this.onTap, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(3, 3))]),
        child: Center(
          child: Text(
            buttontext,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
