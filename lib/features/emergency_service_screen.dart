//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'call_screen.dart'; // Import the new call screen
//
// class EmergencyServiceScreen extends StatefulWidget {
//   @override
//   _EmergencyServiceScreenState createState() => _EmergencyServiceScreenState();
// }
//
// class _EmergencyServiceScreenState extends State<EmergencyServiceScreen> {
//   late GoogleMapController mapController;
//
//   final LatLng _center = LatLng(23.8103, 90.4125); // Example coordinates
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Emergency Service')),
//       body: Column(
//         children: [
//           Expanded(
//             child: GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(target: _center, zoom: 12.0),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.location_on),
//             title: Text('Ambulance Service'),
//             subtitle: Text('Estimated Time: 10 mins'),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Navigate to the Call Screen
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => CallScreen()),
//                     );
//                   },
//                   child: Text('Call'),
//
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                   onPressed: () {
//                     // SOS action
//                     Navigator.pushNamed(context, '/sos');
//                   },
//                   child: Text('SOS'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


//-----------last modified


import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'call_screen.dart'; // Import the call screen

class EmergencyServiceScreen extends StatefulWidget {
  @override
  _EmergencyServiceScreenState createState() => _EmergencyServiceScreenState();
}

class _EmergencyServiceScreenState extends State<EmergencyServiceScreen> {
  late GoogleMapController mapController;

  final LatLng _center = LatLng(23.8103, 90.4125); // Example coordinates

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Service'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              // Info button action
            },
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Google Map
          Positioned.fill(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(target: _center, zoom: 12.0),
            ),
          ),

          // White Card Container (like in the design)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Top Row with Estimated Time on the left and Call & SOS buttons on the right
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Estimated Path Time
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Estimated path time',
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Text(
                                '30 - 45 min',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // SOS and Call Buttons
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CallScreen()),
                                  );
                                },
                                child: Text('Call'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sos');
                                },
                                child: Text('SOS'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      // Driver and Home Info
                      ListTile(
                        leading: Icon(Icons.local_hospital, color: Colors.purple),
                        title: Text('abul ambulance service', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('Jln Soekarno Hatta'),
                      ),
                      ListTile(
                        leading: Icon(Icons.home, color: Colors.purple),
                        title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text('Kathaltola, Mirpur 2'),
                      ),

                      // Driver Identity Section
                      Divider(),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/driver_image.jpg'), // Placeholder for driver's image
                        ),
                        title: Text('Driver Identity'),
                        subtitle: Text('Natan'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.call),
                              onPressed: () {
                                // Call driver
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.message),
                              onPressed: () {
                                // Message driver
                              },
                            ),
                          ],
                        ),
                      ),

                      // Show Directions Button
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Show directions action
                          },
                          icon: Icon(Icons.directions),
                          label: Text('Show Direction'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF470DC2), // Button color as in the design
                            minimumSize: Size(double.infinity, 50), // Full-width button
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
