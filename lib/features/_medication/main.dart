import 'package:flutter/material.dart';
import 'medication_reminder_screen.dart'; // Import the screen class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medication Reminder',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MedicationReminderScreen(), // Set the screen class here
    );
  }
}
