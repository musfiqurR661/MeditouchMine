import 'package:flutter/material.dart';

class SOSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Emergency Services')),
      body: Stack(
        children: [
          // Main content of the page
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you in an emergency?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Please press the SOS button.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 20),

                // Adding double-shaded circle with SOS text
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer circle (first shade)
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE7D4FF), // First outer shade
                      ),
                    ),
                    // Inner circle (second shade)
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade400, // Second inner shade
                      ),
                    ),
                    // Actual SOS Button with text
                    ElevatedButton(
                      onPressed: () {
                        // SOS action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF470DC2), // Button color
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(50),
                      ),
                      child: Text(
                        'SOS',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Your Current Address\n1234 West St, Colorado, USA',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),

          // Positioned "i" button in top-right corner
          Positioned(
            top: 2,
            right: 30,
            child: GestureDetector(
              onTap: () {
                // Action for the info button
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey[300], // Background color of the "i" button
                child: Icon(
                  Icons.info,
                 // color: Colors.black, // Color of the "i" icon
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
