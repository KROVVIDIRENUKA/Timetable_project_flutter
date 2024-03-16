import 'package:flutter/material.dart';

class Faculty1 extends StatelessWidget {
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
                'Kalyan Babu',
                'OOSE',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'Murthy',
                'CC',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'yesu sekharam',
                'CN',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'Srinivas',
                'DL',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'Venkateswarao',
                'MCCP-2',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'dileep',
                'PEHV',
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