import 'package:flutter/material.dart';

class Stock extends StatefulWidget {
  const Stock({super.key});
  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Management'),
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
                      'Needs Stockage',
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
                          leading: const Icon(Icons.inventory),
                          title: Text('Item ${index + 1}'),
                          subtitle: Text(
                              'Details of Item ${index + 1} needing stockage'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green[50],
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Needs Stock',
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
                          leading: const Icon(Icons.store),
                          title: Text('Item ${index + 1}'),
                          subtitle: Text(
                              'Details of Item ${index + 1} needing stock'),
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
