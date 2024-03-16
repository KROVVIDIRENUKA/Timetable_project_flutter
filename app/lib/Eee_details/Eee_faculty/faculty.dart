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
            title: Text('List View Example'),
            
          ),
          body: ListView(
            children: [
              buildListItem(
                context,
                'PSA',
                'Sindhu',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'IOT',
                'Srinivas',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'MPMC',
                'Praveen',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'VLSI',
                'Sai Murthy',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'ED',
                'Renuka Sai',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'PE',
                'Devi',
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