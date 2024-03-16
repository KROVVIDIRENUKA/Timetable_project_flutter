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
                'MS',
                'Sherin',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'MWE',
                'Lavanya',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'SDTV',
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
                'DSP',
                'Balu',
                'assets/image1.jpg',
              ),
              buildListItem(
                context,
                'PEH',
                'Venkateswarao',
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