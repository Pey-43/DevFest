import 'package:flutter/material.dart';

class Recomendation extends StatefulWidget {
  const Recomendation({super.key});
  @override
  State<Recomendation> createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B2B Recommendations'),
      ),
      body: Column(
        children: [
          // First Section: Recommended Services
          Expanded(
            child: Container(
              color: Colors.blue[50],
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Recommended Services',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text('Logistics Support'),
                          subtitle: Text(
                              'Efficient freight and transport solutions for businesses.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text('IT Services'),
                          subtitle: Text(
                              'Managed IT support and software development for your business.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text('Marketing Assistance'),
                          subtitle: Text(
                              'Digital marketing campaigns to boost your outreach.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text('Financial Consulting'),
                          subtitle: Text(
                              'Expert financial advice and tax planning services.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text('Human Resources Support'),
                          subtitle:
                              Text('Recruitment and HR management services.'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Section: Partner Businesses
          Expanded(
            child: Container(
              color: Colors.green[50],
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Partner Businesses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.business),
                          title: Text('ABC Logistics'),
                          subtitle: Text(
                              'Specialized in freight and transport services globally.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.business),
                          title: Text('TechNova Solutions'),
                          subtitle: Text(
                              'Providing innovative IT solutions for businesses.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.business),
                          title: Text('Bright Marketing Co.'),
                          subtitle: Text(
                              'Experts in digital and traditional marketing strategies.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.business),
                          title: Text('FinancePro Advisory'),
                          subtitle: Text(
                              'Your trusted partner in financial and tax consulting.'),
                        ),
                        ListTile(
                          leading: Icon(Icons.business),
                          title: Text('HR Dynamics'),
                          subtitle: Text(
                              'Comprehensive human resource solutions for businesses.'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
