import 'package:flutter/material.dart';

class DetailsPage1 extends StatelessWidget {
  final int index;

  DetailsPage1({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'CSE-A', '-', '-', '-', 'CAI', '-'],
      ['10:30-11:20', '-', 'CSE-A', 'CAI', 'CC', 'AIML', '-'],
      ['11:20-12:10', '-', '-', 'CAI', 'CAI', '-', 'CSE-A'],
      ['12:10-1:00', 'AIML', 'CAI', '-', 'CSE-A', '-', 'AIML'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', '-', 'CSE-A', 'AIML', '-', 'CAI', 'CSE-A'],
      ['2:50-3:40', 'CAI', '-', 'AIML', '-', '-', '-'],
      ['3:40-4:30', '-', '-', '-', '-', 'CSE-A', 'CAI'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage2 extends StatelessWidget {
  final int index;

  DetailsPage2({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'CAI-A', '-', '-', 'AIM-B', 'CSE-C', ''],
      ['10:30-11:20', '-', 'MECH-A', '-', 'CIVILB', '-', 'ECT-B'],
      ['11:20-12:10', 'AIM-A', 'MECH-B', '-', '-', 'EEE-A', 'CSE-D'],
      ['12:10-1:00', 'ECE-B', '-', 'ECE-B', '-', '-', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'CST-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', '-', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'MECH-B', '-', '-', 'CST-A', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage3 extends StatelessWidget {
  final int index;

  DetailsPage3({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', '-', 'CST-B', '-', '-', 'AIM-A', '-'],
      ['10:30-11:20', 'CSE-A', '-', '-', 'CAI-B', '-', '-'],
      ['11:20-12:10', '-', '-', 'CST-A', 'CIVIL-A', '-', 'MECH-B'],
      ['12:10-1:00', '-', '-', 'MECH-A', '-', '-', 'CAI-A'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'ECE-A', '-', 'ECT-B', '-', '-', '-'],
      ['2:50-3:40', 'EEEA', '-', '-', 'CIVIL-B', '-', '-'],
      ['3:40-4:30', 'CSE-D', '-', '-', 'MECH-B', 'CSE-C', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage4 extends StatelessWidget {
  final int index;

  DetailsPage4({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
       ['9:30-10:30', '-', '-', 'CAI-B', '-', 'CIVIL-A', '-'],
      ['10:30-11:20', 'CSE-A', '-', '-', 'MECH-B', '-', 'ECT-A'],
      ['11:20-12:10', '-', 'CIVIL-B', '-', '-', 'ECE-B', 'ECE-C'],
      ['12:10-1:00', 'MECH-A', 'CAI-A', '-', '', '-', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'ECT-B', '-', '-', 'MECH-B', '-', '-'],
      ['2:50-3:40', 'CAI-A', 'CSE-C', '-', '-', '-', 'CIVIL-B'],
      ['3:40-4:30', 'MECH-B', '-', 'EEE-A', '-', '-', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage5 extends StatelessWidget {
  final int index;

  DetailsPage5({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'CAI-A', '-', '-', 'AIM-B', 'CSE-C', ''],
      ['10:30-11:20', '-', 'MECH-A', '-', 'CIVILB', '-', 'ECT-B'],
      ['11:20-12:10', 'AIM-A', 'MECH-B', '-', '-', 'EEE-A', 'CSE-D'],
      ['12:10-1:00', 'ECE-B', '-', 'ECE-B', '-', '-', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'CST-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', '-', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'MECH-B', '-', '-', 'CST-A', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage6 extends StatelessWidget {
  final int index;

  DetailsPage6({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
     ['9:30-10:30', '-', 'CST-B', '-', '-', 'AIM-A', '-'],
      ['10:30-11:20', 'CSE-A', '-', '-', 'CAI-B', '-', '-'],
      ['11:20-12:10', '-', '-', 'CST-A', 'CIVIL-A', '-', 'MECH-B'],
      ['12:10-1:00', '-', '-', 'MECH-A', '-', '-', 'CAI-A'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'ECE-A', '-', 'ECT-B', '-', '-', '-'],
      ['2:50-3:40', 'EEEA', '-', '-', 'CIVIL-B', '-', '-'],
      ['3:40-4:30', 'CSE-D', '-', '-', 'MECH-B', 'CSE-C', '-'],
    ];
    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage7 extends StatelessWidget {
  final int index;

  DetailsPage7({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', '-', '-', 'CAI-B', '-', 'CIVIL-A', '-'],
      ['10:30-11:20', 'CSE-A', '-', '-', 'MECH-B', '-', 'ECT-A'],
      ['11:20-12:10', '-', 'CIVIL-B', '-', '-', 'ECE-B', 'ECE-C'],
      ['12:10-1:00', 'MECH-A', 'CAI-A', '-', '', '-', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'ECT-B', '-', '-', 'MECH-B', '-', '-'],
      ['2:50-3:40', 'CAI-A', 'CSE-C', '-', '-', '-', 'CIVIL-B'],
      ['3:40-4:30', 'MECH-B', '-', 'EEE-A', '-', '-', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage8 extends StatelessWidget {
  final int index;

  DetailsPage8({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', '-', 'CST-B', '-', '-', 'AIM-A', '-'],
      ['10:30-11:20', 'CSE-A', '-', '-', 'CAI-B', '-', '-'],
      ['11:20-12:10', '-', '-', 'CST-A', 'CIVIL-A', '-', 'MECH-B'],
      ['12:10-1:00', '-', '-', 'MECH-A', '-', '-', 'CAI-A'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
       ['2:00-2:50', 'CST-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', '-', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'MECH-B', '-', '-', 'CST-A', '-'],
    ];
    // Build timetable grid
    return 
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage9 extends StatelessWidget {
  final int index;

  DetailsPage9({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
     ['9:30-10:30', '-', 'CST-B', '-', '-', 'AIM-A', '-'],
      ['10:30-11:20', 'CSE-A', '-', '-', 'CAI-B', '-', '-'],
      ['11:20-12:10', '-', '-', 'CST-A', 'CIVIL-A', '-', 'MECH-B'],
      ['12:10-1:00', '-', '-', 'MECH-A', '-', '-', 'CAI-A'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'CST-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', '-', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'MECH-B', '-', '-', 'CST-A', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}

class DetailsPage10 extends StatelessWidget {
  final int index;

  DetailsPage10({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'CAI-B', '-', '-', 'AIM-A', 'CSE-C', ''],
      ['10:30-11:20', '-', 'MECH-A', '-', 'CIVIL-B', '-', 'ECT-B'],
      ['11:20-12:10', 'AIM-A', 'MECH-B', '-', '-', 'EEE-A', 'CSE-D'],
      ['12:10-1:00', 'ECE-B', '-', 'ECE-B', '-', '-', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'CST-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', 'EEE-A', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'MECH-B', '-', '-', 'CST-A', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}
class DetailsPage11 extends StatelessWidget {
  final int index;

  DetailsPage11({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'MECH-A', '-', 'CST-B', 'AIM-B', 'CSE-C', ''],
      ['10:30-11:20', '-', 'MECH-A', '-', 'CIVILB', '-', 'ECT-B'],
      ['11:20-12:10', 'AIM-A', 'MECH-A', '-', '-', 'EEE-A', 'CSE-D'],
      ['12:10-1:00', 'ECE-C', '-', 'ECE-B', '-', 'ECE-D', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'EEE-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', '-', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'ECT-A', '-', '-', 'CST-A', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}
class DetailsPage12 extends StatelessWidget {
  final int index;

  DetailsPage12({required this.index});

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
          child: buildTimetable(),
        ),
      ),
    );
  }

  Widget buildTimetable() {
    // Define your timetable data here
    List<List<String>> timetableData = [
      ['9:30-10:30', 'CAI-A', '-', '-', 'AIM-B', 'CSE-C', ''],
      ['10:30-11:20', '-', 'MECH-A', '-', 'CIVILB', '-', 'ECT-B'],
      ['11:20-12:10', 'AIM-A', 'MECH-B', '-', '-', 'EEE-A', 'CSE-D'],
      ['12:10-1:00', 'ECE-B', '-', 'ECE-B', '-', '-', '-'],
      ['1:00-2:00', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch', 'Lunch'],
      ['2:00-2:50', 'CST-A', 'CST-B', '-', '-', '-', 'CIVIL-A'],
      ['2:50-3:40', 'CIVIL-A', 'MECH-A', '-', '-', 'ECT-B', '-'],
      ['3:40-4:30', '-', 'MECH-B', '-', '-', 'CST-A', '-'],
    ];

    // Build timetable grid
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      child:DataTable(
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
    ));
  }
}