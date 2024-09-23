// import 'package:flutter/material.dart';
//
// class MedicineIntakeSelectionScreen extends StatefulWidget {
//   @override
//   _MedicineIntakeSelectionScreenState createState() => _MedicineIntakeSelectionScreenState();
// }
//
// class _MedicineIntakeSelectionScreenState extends State<MedicineIntakeSelectionScreen> {
//   String selectedFrequency = 'Everyday';
//   int selectedDays = 2;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Reminder'),
//         backgroundColor: Color(0xFF6B2C9F), // Purple color
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Medicine Name Input
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Medicine Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//
//             // Dropdown for selecting frequency
//             Text('How often is this dose taken?', style: TextStyle(fontSize: 16)),
//             DropdownButton<String>(
//               value: selectedFrequency,
//               isExpanded: true,
//               items: <String>['Everyday', 'Alternate Days', 'Weekly', 'Monthly']
//                   .map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedFrequency = newValue!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//
//             // Select Days for dose intake
//             Text('How often is this dose taken?', style: TextStyle(fontSize: 16)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(7, (index) {
//                 return ChoiceChip(
//                   label: Text('${index + 1}'),
//                   selected: selectedDays == index + 1,
//                   onSelected: (bool selected) {
//                     setState(() {
//                       selectedDays = index + 1;
//                     });
//                   },
//                   selectedColor: Colors.purple,
//                   backgroundColor: Colors.grey[200],
//                   labelStyle: TextStyle(color: Colors.white),
//                 );
//               }),
//             ),
//             SizedBox(height: 20),
//
//             // Add Button
//             ElevatedButton(
//               onPressed: () {
//                 // Add action or navigation
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF6B2C9F), // Purple color
//                 padding: EdgeInsets.symmetric(vertical: 16.0),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//               child: Center(
//                 child: Text(
//                   'Add',
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//....

import 'package:flutter/material.dart';
import 'schedule_dose_screen.dart'; // Adjust the import path as needed

class MedicineIntakeSelectionScreen extends StatefulWidget {
  @override
  _MedicineIntakeSelectionScreenState createState() => _MedicineIntakeSelectionScreenState();
}

class _MedicineIntakeSelectionScreenState extends State<MedicineIntakeSelectionScreen> {
  String selectedFrequency = 'Everyday';
  int selectedDays = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Reminder'),
        backgroundColor: Color(0xFF5E20D0)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Medicine Name Input
            TextField(
              decoration: InputDecoration(
                labelText: 'Medicine Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Dropdown for selecting frequency
            Text('How often is this dose taken?', style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              value: selectedFrequency,
              isExpanded: true,
              items: <String>['Everyday', 'Alternate Days', 'Weekly', 'Monthly']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedFrequency = newValue!;
                });
              },
            ),
            SizedBox(height: 20),

            // Select Days for dose intake
            Text('Select number of days:', style: TextStyle(fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(7, (index) {
                return ChoiceChip(
                  label: Text('${index + 1}'),
                  selected: selectedDays == index + 1,
                  onSelected: (bool selected) {
                    setState(() {
                      selectedDays = index + 1;
                    });
                  },
                  selectedColor: Color(0xFF5E20D0),
                  backgroundColor: Colors.grey[200],
                  labelStyle: TextStyle(color: Colors.white),
                );
              }),
            ),
            SizedBox(height: 20),

            // Add Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleDoseScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5E20D0), // project color
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
