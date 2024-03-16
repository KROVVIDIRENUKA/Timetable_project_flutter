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
      ['9:30-10:30', 'PSA', 'IOT', 'MPMC', 'VLSI', 'ED', 'MPMC'],
      ['10:30-11:20', 'IOT', 'PE', 'PSA', 'ED', 'ED', 'IOT'],
      ['11:20-12:10', 'VLSI', 'PE', 'VLSI', 'IOT', 'MPMC', 'ED'],
      ['12:10-1:00', 'ED', 'PE', 'MPMC', 'IPR&P', 'IOT', 'PSA'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'PSA', 'IOT', 'PSA', 'MPMC', 'PSA', 'PE'],
      ['2:50-3:40', 'PSA', 'LIB', 'ED', 'MPMC', 'VLSI', 'PE'],
      ['3:40-4:30', 'IPR&P', 'SPORTS', 'VLSI', 'MPMC', 'PE', 'VLSI'],
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
