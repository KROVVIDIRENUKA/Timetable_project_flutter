import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
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
                'assets/background2.jpeg'), // Replace 'assets/background2.jpeg' with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: buildTimetable(),
          ),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'OOSE', 'CN', 'CC', 'DL', 'OOSE', 'DL'],
      ['10:30-11:20', 'OOSE', 'MCCP-2', 'CN', 'CC', 'DL', 'OOSE'],
      ['11:20-12:10', 'OOSE', 'MCCP-2', 'CN', 'CC', 'OOSE', 'DL'],
      ['12:10-1:00', 'DL', 'CN', 'CN', 'CC', 'OOSE', 'OOSE'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'CN', 'CC', 'OOSE', 'MCCP-2', 'MCCP-2', 'CN'],
      ['2:50-3:40', 'DL', 'MCCP-2', 'PEHV', 'PEHV', 'OOSE', 'DL'],
      ['3:40-4:30', 'CN', 'CC', 'OOSE', 'DL', 'OOSE', 'CN'],
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
