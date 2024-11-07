import 'package:flutter/material.dart';

class StationDetailsPage extends StatelessWidget {
  final int trainIndex;

  StationDetailsPage({required this.trainIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train $trainIndex Details'),
      ),
      body: Column(
        children: [
          Text(
            'Stations for Train $trainIndex',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Example number of stations
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.train),
                  title: Text('Station ${index + 1}'),
                  subtitle: Text('Arrival Time: ${index + 10}:00 AM'),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Go back to the previous page
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
