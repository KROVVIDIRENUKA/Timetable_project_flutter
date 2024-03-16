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
      ['9:30-10:30', 'MS', 'MWE', 'SDTV', 'IOT', 'DSP', 'MWE'],
      ['10:30-11:20', 'MWE', 'SDTV', 'PEH', 'DSP', 'IOT', 'DSP'],
      ['11:20-12:10', 'SDTV', 'DSP', 'MWE', 'MS', 'MS', 'DSP'],
      ['12:10-1:00', 'DSP', 'IOT', 'SDTV', 'MWE', 'SDTV', 'DSP'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'PEH', 'MWE', 'DSP', 'IOT', 'MWE', 'MS'],
      ['2:50-3:40', 'MWE', 'IOT', 'SDTV', 'DSP', 'MS', 'MWE'],
      ['3:40-4:30', 'MWE', 'SPORTS', 'IOT', 'DSP', 'SDTV', 'MS'],
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
