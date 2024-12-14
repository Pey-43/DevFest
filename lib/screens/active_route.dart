import 'package:flutter/material.dart';

class ActiveRoute extends StatefulWidget {
  const ActiveRoute({super.key});
  @override
  State<ActiveRoute> createState() => _ActiveRouteState();
}

class _ActiveRouteState extends State<ActiveRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transport Offers & Requests'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue[50],
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Offers of Transport',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.local_shipping),
                          title: Text('Offer ${index + 1}'),
                          subtitle: Text('Details of Offer ${index + 1}'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Half: Requests for Transport
          Expanded(
            child: Container(
              color: Colors.green[50],
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Requests for Transport',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.directions_car),
                          title: Text('Request ${index + 1}'),
                          subtitle: Text('Details of Request ${index + 1}'),
                        );
                      },
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
