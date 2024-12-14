import 'package:flutter/material.dart';

class Tirsam extends StatelessWidget {
  const Tirsam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Tirsam'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Tirsam',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Tirsam is a leading building company specializing in providing innovative construction solutions for businesses and communities. We pride ourselves on delivering high-quality projects that stand the test of time.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Our mission is to shape the future of construction by creating sustainable, efficient, and aesthetically pleasing buildings. We aim to build strong relationships with our clients through trust and excellence.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Key Features',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- Innovative Designs: Combining functionality with modern aesthetics.\n- Quality Construction: Using top-grade materials and advanced techniques.\n- Sustainable Practices: Building with the environment in mind.\n- Client-Centric Approach: Tailoring solutions to meet client needs.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Why Choose Tirsam?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Tirsam is committed to excellence in every project we undertake. With a team of experienced professionals and a focus on innovation, we ensure that every building we construct exceeds expectations and contributes to a better future.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
