import 'package:flutter/material.dart';
import 'Aiml_timetable/Page1.dart';
import 'Aiml_faculty/faculty.dart';

class AimlDetailsPage1 extends StatelessWidget {
  // Define lists for images and texts
  final List<String> images = [
    'assets/timetable1.jpeg',
    'assets/teacher.jpg',
  ];

  final List<String> itemTexts = [
    'Timetable',
    'Faculty',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aiml Section Detail'),
        
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(images[index]),
                      ),
                    ),
                  ),
                  title: Text('Item ${index + 1}'),
                  subtitle: Text(itemTexts[index]),
                  onTap: () {
                    // Handle tapping on each list item
                    // You can add navigation logic here if needed
                    _navigateToDetailPage(context, index);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateToDetailPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (_) => Page1()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (_) => Faculty1()));
        break;
    }
  }
}


