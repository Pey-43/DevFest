import 'package:competition/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String image;
  final String email;
  final String rate;
  final Widget? page;

  const MyCard(
      {super.key,
      required this.name,
      required this.image,
      required this.email,
      required this.rate,
      this.page});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.grey,
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page!));
        },
        title: Text(name),
        subtitle: Text(email),
        trailing: Text(rate),
        leading: SizedBox(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            )),
      ),
    );
  }
}
