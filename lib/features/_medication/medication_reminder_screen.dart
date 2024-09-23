// import 'package:flutter/material.dart';
//
// class MedicationReminderScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Reminder'),
//         backgroundColor: Color(0xFF5E20D0),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {
//               // Notification icon action
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           // "Add Medicine Reminder" Button
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF5E20D0), // Button color
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
//               ),
//               onPressed: () {
//                 // Add medicine action
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.add),
//                   SizedBox(width: 10),
//                   Text(
//                     'Add Medicine Reminder',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           // Calendar section for selecting date
//           Container(
//             height: 80,
//             padding: EdgeInsets.symmetric(horizontal: 8.0),
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 _buildDateTile('28', 'Tu'),
//                 _buildDateTile('29', 'We'),
//                 _buildDateTile('30', 'Th', isSelected: true),
//                 _buildDateTile('01', 'Fr'),
//                 _buildDateTile('02', 'Sa'),
//               ],
//             ),
//           ),
//
//           // Medicine List Section
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.all(16.0),
//               children: [
//                 _buildMedicineReminder('06:00', 'Amoxicillin', '1 tablet after breakfast'),
//                 _buildMedicineReminder('10:00', 'Paracetamol', '1 sachet 150 ml'),
//                 _buildMedicineReminder('15:00', 'Amoxicillin', '1 tablet after lunch'),
//                 _buildMedicineReminder('20:00', 'Paracetamol', '1 tablet after dinner'),
//               ],
//             ),
//           ),
//         ],
//       ),
//
//       // Bottom Navigation Bar
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color(0xFF5E20D0),
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white.withOpacity(0.6),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Helper method to build each date tile
//   Widget _buildDateTile(String day, String dayOfWeek, {bool isSelected = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: isSelected ? Color(0xFF5E20D0) : Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         width: 60,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(day, style: TextStyle(fontSize: 18, color: isSelected ? Colors.white : Colors.black)),
//             Text(dayOfWeek, style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.black)),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Helper method to build each medicine reminder item
//   Widget _buildMedicineReminder(String time, String medicineName, String details) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Text(time, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//           SizedBox(width: 16),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(medicineName, style: TextStyle(fontSize: 16)),
//               Text(details, style: TextStyle(color: Colors.grey)),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

//............


import 'package:flutter/material.dart';
import 'medicine_intake_selection_screen.dart'; // Adjust the import path as needed

class MedicationReminderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Reminder'),
        backgroundColor: Color(0xFF5E20D0),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Notification icon action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // "Add Medicine Reminder" Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5E20D0), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicineIntakeSelectionScreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10),
                  Text(
                    'Add Medicine Reminder',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          // Calendar section for selecting date
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildDateTile('28', 'Tu'),
                _buildDateTile('29', 'We'),
                _buildDateTile('30', 'Th', isSelected: true),
                _buildDateTile('01', 'Fr'),
                _buildDateTile('02', 'Sa'),
              ],
            ),
          ),

          // Medicine List Section
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                _buildMedicineReminder('06:00', 'Amoxicillin', '1 tablet after breakfast'),
                _buildMedicineReminder('10:00', 'Paracetamol', '1 sachet 150 ml'),
                _buildMedicineReminder('15:00', 'Amoxicillin', '1 tablet after lunch'),
                _buildMedicineReminder('20:00', 'Paracetamol', '1 tablet after dinner'),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF5E20D0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  // Helper method to build each date tile
  Widget _buildDateTile(String day, String dayOfWeek, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF5E20D0) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(day, style: TextStyle(fontSize: 18, color: isSelected ? Colors.white : Colors.black)),
            Text(dayOfWeek, style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.black)),
          ],
        ),
      ),
    );
  }

  // Helper method to build each medicine reminder item
  Widget _buildMedicineReminder(String time, String medicineName, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(time, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(medicineName, style: TextStyle(fontSize: 16)),
              Text(details, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
