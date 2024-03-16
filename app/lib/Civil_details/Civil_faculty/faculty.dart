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
                'MEFA',
                'Srujana',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'TE',
                'Tulasi',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'WRE',
                'Sujatha',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'FN',
                'Mahesh',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'EG',
                'Abhiram',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'PCS-2',
                'Gowri Mohan',
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