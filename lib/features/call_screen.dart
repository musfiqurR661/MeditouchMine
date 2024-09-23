// import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Emergency'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Emergency Help Needed?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Just hold the button to call',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle 1 (largest)
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD6CCFF), // Outer most circle color
                  ),
                ),
                // Outer circle 2 (middle)
                Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFBD9FFD), // Second circle color
                  ),
                ),
                // Outer circle 3 (inner)
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow[100], // Third circle color
                  ),
                ),
                // Actual button with call icon
                ElevatedButton(
                  onPressed: () {
                    // Perform call action here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(50),
                    backgroundColor: Color(0xFF470DC2), // Main circle color
                  ),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Contact your Close Ones',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}



