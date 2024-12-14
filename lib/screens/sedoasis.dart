import 'package:flutter/material.dart';

class SedOasis extends StatelessWidget {
  const SedOasis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Sed Oasis'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Sed Oasis',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Sed Oasis, also known as El Oued, is a mesmerizing desert city located in Algeria. Famous for its unique architecture and lush palm groves, it is often referred to as the "City of a Thousand Domes." This enchanting oasis blends tradition and modernity, offering visitors a glimpse into its rich cultural heritage and natural beauty.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Our Significance',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Sed Oasis serves as a vital hub for agriculture, particularly date farming, and is renowned for its sustainable practices and ingenious irrigation systems. It is a symbol of resilience and innovation in the heart of the Sahara Desert.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Key Highlights',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- Unique Architecture: The dome-shaped roofs protect against the desert heat and are a testament to the city’s adaptability.\n- Palm Groves: Home to sprawling date plantations that form the backbone of its economy.\n- Cultural Heritage: Rich traditions, festivals, and crafts that celebrate its Saharan identity.\n- Scenic Beauty: A picturesque blend of golden dunes and green oases.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text(
                'Why Visit Sed Oasis?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Sed Oasis is not just a destination; it’s an experience. Whether you’re drawn to its architectural marvels, vibrant culture, or serene landscapes, Sed Oasis offers something for everyone. Come and discover the charm of this timeless desert gem.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
