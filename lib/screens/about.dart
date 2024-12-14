import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset(
              "images/team.png",
              height: 150,
            ),
            const Text(
              'Espada Team',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Text(
                '1- Bey Aymen\n2-Boukhalfa Chakib\n3-Nouri Mohammed Islam\n4-Lebriki Mohammed Mouatez')
          ],
        ),
      ),
    );
  }
}
