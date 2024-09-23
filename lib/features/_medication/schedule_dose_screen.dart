// import 'package:flutter/material.dart';
//
// class ScheduleDoseScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Schedule the Dose'),
//         backgroundColor: Color(0xFF6B2C9F), // Purple color
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'What time in the day do you want to take it?',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             // List of Times with icons
//             Expanded(
//               child: ListView(
//                 children: [
//                   buildTimeRow('Morning, before breakfast', 'Alarm set for 8am'),
//                   buildTimeRow('Morning, After breakfast', 'Alarm set for 9am'),
//                   buildTimeRow('Morning, Before Lunch', 'Alarm set for 11am'),
//                   buildTimeRow('Morning, After Lunch', 'Alarm set for 1pm'),
//                   buildTimeRow('Afternoon, Before Dinner', 'Alarm set for 5pm'),
//                   buildTimeRow('Evening, After Dinner', 'Alarm set for 8pm'),
//                 ],
//               ),
//             ),
//             // Next Button
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Navigate to next page or action
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF6B2C9F), // Purple color
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Next',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Helper widget to build each time row
//   Widget buildTimeRow(String time, String alarm) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: ListTile(
//         leading: Icon(Icons.access_time, color: Colors.purple),
//         title: Text(time),
//         subtitle: Text(alarm),
//         trailing: Icon(Icons.notifications_active_outlined, color: Colors.purple),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         tileColor: Colors.grey[100],
//       ),
//     );
//   }
// }


//''''

import 'package:flutter/material.dart';

class ScheduleDoseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule the Dose'),
        backgroundColor: Color(0xFF5E20D0), // Purple color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What time in the day do you want to take it?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // List of Times with icons
            Expanded(
              child: ListView(
                children: [
                  buildTimeRow('Morning, before breakfast', 'Alarm set for 8am'),
                  buildTimeRow('Morning, after breakfast', 'Alarm set for 9am'),
                  buildTimeRow('Morning, before lunch', 'Alarm set for 11am'),
                  buildTimeRow('Morning, after lunch', 'Alarm set for 1pm'),
                  buildTimeRow('Afternoon, before dinner', 'Alarm set for 5pm'),
                  buildTimeRow('Evening, after dinner', 'Alarm set for 8pm'),
                ],
              ),
            ),
            // Next Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to next page or action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5E20D0),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Helper widget to build each time row
  Widget buildTimeRow(String time, String alarm) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(Icons.access_time, color: Color(0xFF5E20D0)),
        title: Text(time),
        subtitle: Text(alarm),
        trailing: Icon(Icons.notifications_active_outlined, color: Color(0xFF5E20D0)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: Colors.grey[100],
      ),
    );
  }
}
