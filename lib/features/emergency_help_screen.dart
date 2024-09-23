import 'package:flutter/material.dart';

class EmergencyHelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Emergency Help')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone, size: 100, color: Colors.purple),
            SizedBox(height: 20),
            Text('Emergency Help Needed?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call action here
              },
              child: Icon(Icons.call),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
