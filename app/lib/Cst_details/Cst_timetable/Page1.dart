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
      ['9:30-10:30', 'CN', 'ACD', 'ACD', 'UML', 'CNS', 'ML'],
      ['10:30-11:20', 'ACD', 'MCCP-2', 'ACD', 'ACD', 'CN', 'ML'],
      ['11:20-12:10', 'CNS', 'MCCP-2', 'CNS', 'CNS', 'CN', 'ML'],
      ['12:10-1:00', 'ML', 'MCCP-2', 'ML', 'ML', 'CN', 'ML'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'ACD', 'CN', 'MCCP-2', 'UML', 'PEHV', 'CNS'],
      ['2:50-3:40', 'ML', 'CN', 'MCCP-2', 'UML', 'CN', 'CN'],
      ['3:40-4:30', 'LIB', 'PEHV', 'MCCP-2', 'UML', 'CNS', 'SPORTS'],
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
