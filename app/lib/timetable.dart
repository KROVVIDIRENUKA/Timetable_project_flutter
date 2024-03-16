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
                'assets/ground.jpg'), // Replace 'assets/background2.jpeg' with your image path
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
        '09:30 AM-10:30 AM',
        'CC',
        'DL',
        'CN',
        'OOSE',
        'DL',
        'OOSE'
      ],
      [
        '10:30 AM-11:20 AM',
        'MCCP-2',
        'OOSE',
        'DL LAB',
        'OOSE LAB',
        'CN LAB',
        'DL'
      ],
      [
        '11:20 AM-12:10 PM',
        'MCCP-2',
        'CC',
        'DL LAB',
        'OOSE LAB',
        'CN LAB',
        'CC'
      ],
      [
        '12:10 PM-01:00 PM',
        'MCCP-2',
        'CN',
        'DL LAB',
        'OOSE LAB',
        'CN LAB',
        'LIBRARY'
      ],
      [
        '1:00 PM-02:00 PM',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch',
        'Lunch'
      ],
      [
        '2:00 PM-02:50 PM',
        'CN',
        'MCCP-2',
        'CC',
        'DL',
        'CC',
        'DL'
      ],
      [
        '2:50 PM-3:40 PM',
        'DL',
        'MCCP-2',
        'PEHV',
        'CN',
        'OOSE',
        'CN'
      ],
      [
        '3:40 PM-4:30 PM',
        'OOSE',
        'MCCP-2',
        'PEHV',
        'CC',
        'CN',
        'SPORTS'
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
        ]);
      }).toList(),
    );
  }
}