import 'package:flutter/material.dart';
import 'package:flutter_irctc_clone_app/Presentation/Screens/Station.dart';
import 'package:lottie/lottie.dart';

class TrainListPage extends StatefulWidget {
  @override
  _TrainListPageState createState() => _TrainListPageState();
}

class _TrainListPageState extends State<TrainListPage> {
  Locale _locale = Locale('en');

  void _changeLanguage(String languageCode) {
    setState(() {
      _locale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 35, 35),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(96, 50, 49, 49),
          title: const Text(
            'Train Booking',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 2,
          actions: [
            IconButton(
              icon: const Icon(Icons.language),
              onPressed: () {
                _changeLanguage('fr'); // Change language dynamically
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 10, // Example number of trains
          itemBuilder: (context, index) {
            return TrainBookingCard(
              trainNumber: 'Train $index',
              source: 'Source $index',
              destination: 'Destination $index',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StationDetailsPage(trainIndex: index),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class TrainBookingCard extends StatelessWidget {
  final String trainNumber;
  final String source;
  final String destination;
  final VoidCallback onTap;

  TrainBookingCard({
    required this.trainNumber,
    required this.source,
    required this.destination,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.black,
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Lottie.asset(
              'assets/lottie_images/Animation - 1727159452091.json',
              height: 100,
            ),
            Text(
              '$trainNumber',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              '$source → $destination',
              style: const TextStyle(color: Colors.white),
            ),

            InkWell(
              onTap: onTap,
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 132, 206, 134),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Book",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )

            // ElevatedButton(

            //   onPressed: onTap,
            //   child: Text('Book Now'),
            // ),
          ],
        ),
      ),
    );
  }
}
