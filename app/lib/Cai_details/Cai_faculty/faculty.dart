import 'package:flutter/material.dart';

class Faculty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background2.jpeg'), // Set your background image path here
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Faculty'),
          ),
          body: ListView(
            children: [
              buildListItem(
                context,
                'CN',
                'Yesu Sekhar',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'ACD',
                'Ganesh',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'UML',
                'Kalyan Babu',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'CNS',
                'Vamsi reddy',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'ML',
                'Kumar reddy',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'MCCP-2',
                'Venkat',
                'assets/image1.jpg',
              ),
            ],
          ),
        ));
  }

  Widget buildListItem(BuildContext context, String title, String description,
      String imagePath) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        title: Text(title),
        subtitle: Text(description),
        onTap: () {
          // Handle tap
        },
      ),
    );
  }
}