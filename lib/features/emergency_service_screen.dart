
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'call_screen.dart'; // Import the new call screen

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
      appBar: AppBar(title: Text('Emergency Service')),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(target: _center, zoom: 12.0),
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Ambulance Service'),
            subtitle: Text('Estimated Time: 10 mins'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the Call Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CallScreen()),
                    );
                  },
                  child: Text('Call'),

                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    // SOS action
                    Navigator.pushNamed(context, '/sos');
                  },
                  child: Text('SOS'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
