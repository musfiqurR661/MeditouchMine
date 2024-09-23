import 'package:flutter/material.dart';
import 'features/emergency_help_screen.dart';
import 'features/emergency_service_screen.dart';
import 'features/sos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediTouch',
      debugShowCheckedModeBanner: false, // Disable the debug banner
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => EmergencyServiceScreen(),
        '/emergency_help': (context) => EmergencyHelpScreen(),
        '/sos': (context) => SOSScreen(),
      },
    );
  }
}
