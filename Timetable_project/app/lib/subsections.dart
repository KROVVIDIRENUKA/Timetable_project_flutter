import 'package:flutter/material.dart';
import 'timetable.dart'; // Import the TimetablePage widget

class SubSectionPage extends StatelessWidget {
  final String branch;
  final String section;

  SubSectionPage({required this.branch, required this.section});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subsections for $section in $branch'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background_image.jpg'), // Background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(50), // Add padding around the ListView
            children: [
              SizedBox(height: 20), // Add space above the first subsection
              buildSubSectionItem(
                context,
                'Timetable',
                'assets/timetable_image.jpg', // Image path for Timetable
                () {
                  // Navigate to Timetable page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimetablePage()),
                  );
                },
              ),
              SizedBox(height: 20), // Add space between subsections
              // Add other subsection items here
              buildSubSectionItem(
                context,
                'Syllabus',
                'assets/syllabus.jpg', // Image path for Syllabus
                () {
                  // Navigate to Syllabus page
                },
              ),
              SizedBox(height: 20), // Add space between subsections
              // Add other subsection items here
              buildSubSectionItem(
                context,
                'Faculty',
                'assets/faculty.jpg', // Image path for Faculty
                () {
                  // Navigate to Faculty page
                },
              ),
              SizedBox(height: 20), // Add space between subsections
              // Add other subsection items here
              buildSubSectionItem(
                context,
                'Resources',
                'assets/resources.jpg', // Image path for Resources
                () {
                  // Navigate to Resources page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSubSectionItem(BuildContext context, String subsectionName,
      String imagePath, VoidCallback onTapCallback) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        width: 50, // Decrease the width of the entire list item
        height: 80, // Adjust height as needed
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 52, 183, 223),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 200, // Width of the image container
              height: 80,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  subsectionName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
