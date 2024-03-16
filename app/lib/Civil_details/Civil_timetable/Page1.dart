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
      ['9:30-10:30', 'MEFA', 'TE', 'WRE', 'TE', 'SA1', 'WRE'],
      ['10:30-11:20', 'SA1', 'MEFA', 'SOC2', 'SA1', 'TE', 'MEFA'],
      ['11:20-12:10', 'EG', 'EG', 'SOC2', 'EG', 'WRE', 'PCS-2'],
      ['12:10-1:00', 'TE', 'WRE', 'SOC2', 'MEFA', 'LIB', 'PCS-2'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'WRE', 'SA1', 'TE', 'EG', 'EG', 'TE'],
      ['2:50-3:40', 'EG', 'SA1', 'TE', 'EG', 'PCS-2', 'TE'],
      ['3:40-4:30', 'SA1', 'FN', 'SPORTS', 'EG', 'PCS-2', 'TE'],
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
