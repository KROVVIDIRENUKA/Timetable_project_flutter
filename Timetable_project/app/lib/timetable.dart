import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timetable'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background.jpg'), // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      [
        '8:00 AM',
        'Math',
        'English',
        'Science',
        'Geography',
        'Physics',
        'History',
        'Chemistry'
      ],
      [
        '9:00 AM',
        'History',
        'Math',
        'Physics',
        'Math',
        'English',
        'Biology',
        'Geography'
      ],
      [
        '10:00 AM',
        'English',
        'Biology',
        'Chemistry',
        'Physics',
        'Geography',
        'Physics',
        'English'
      ],
      [
        '11:00 AM',
        'Physics',
        'Geography',
        'Math',
        'Biology',
        'Chemistry',
        'History',
        'Biology'
      ],
      [
        '12:00 PM',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch'
      ],
      [
        '1:00 PM',
        'Chemistry',
        'History',
        'Biology',
        'English',
        'Biology',
        'Chemistry',
        'Physics'
      ],
      [
        '2:00 PM',
        'Geography',
        'Physics',
        'History',
        'Chemistry',
        'History',
        'English',
        'Geography'
      ],
      [
        '3:00 PM',
        'Biology',
        'Chemistry',
        'English',
        'History',
        'Math',
        'Math',
        'History'
      ],
    ];

    // Build timetable grid
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text('Time')),
        DataColumn(label: Text('Monday')),
        DataColumn(label: Text('Tuesday')),
        DataColumn(label: Text('Wednesday')),
        DataColumn(label: Text('Thursday')),
        DataColumn(label: Text('Friday')),
        DataColumn(label: Text('Saturday')),
        DataColumn(label: Text('Sunday')),
      ],
      rows: timetableData.map((rowData) {
        return DataRow(cells: [
          DataCell(Text(rowData[0])),
          DataCell(Text(rowData[1])),
          DataCell(Text(rowData[2])),
          DataCell(Text(rowData[3])),
          DataCell(Text(rowData[4])),
          DataCell(Text(rowData[5])),
          DataCell(Text(rowData[6])),
          DataCell(Text(rowData[7])),
        ]);
      }).toList(),
    );
  }
}
