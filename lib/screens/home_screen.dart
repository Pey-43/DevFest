import 'package:competition/components/my_card.dart';
import 'package:competition/screens/about.dart';
import 'package:competition/screens/condor.dart';
import 'package:competition/screens/login.dart';
import 'package:competition/screens/maiky.dart';
import 'package:competition/screens/sedoasis.dart';
import 'package:competition/screens/tirsam.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                "images/profile.png",
                height: 150,
              ),
              const Text(
                'User',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: const Text('about us'),
                leading: const Icon(Icons.contact_page),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const About()));
                },
              ),
              ListTile(
                title: const Text('Log out'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const Login()),
                      (route) => false);
                },
              )
            ],
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    "images/logo.png",
                    height: 250,
                  ),
                ),
                const Text(
                  'Available companies:',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyCard(
                    page: Tirsam(),
                    name: 'TIRSAM',
                    image: 'images/tirsam.png',
                    email: 'Contact@tirsam.com',
                    rate: '4.5'),
                const SizedBox(
                  height: 10,
                ),
                const MyCard(
                    page: SedOasis(),
                    name: 'SED OASIS',
                    image: 'images/sedoasis.jpg',
                    email: 'contact@sedoasis.com',
                    rate: '4.3'),
                const SizedBox(
                  height: 10,
                ),
                const MyCard(
                    page: Maiky(),
                    name: 'MAIKY PIZZA',
                    image: 'images/maiky.png',
                    email: 'maikypizza05@gmail.com',
                    rate: '4.5'),
                const SizedBox(
                  height: 10,
                ),
                const MyCard(
                    page: Condor(),
                    name: 'CONDOR',
                    image: 'images/condor.jpg',
                    email: 'commercial@condor.dz',
                    rate: '4.5'),
              ],
            ),
          )),
    );
  }
}
