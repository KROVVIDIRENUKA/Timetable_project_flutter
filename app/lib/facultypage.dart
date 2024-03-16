import 'package:flutter/material.dart';
import 'facultydetails.dart';
import 'loginpage.dart';
class GridPage extends StatelessWidget {
  // Define lists of names and branches
  final List<String> names = [
    'RAJ',
    'JANU',
    'RANI',
    'SANA',
    'SONY',
    'BANU',
    'LILY',
    'SOMU',
    'LILA',
    'ASU',
    'YASH',
    'GOPI'
  ];

  final List<String> branches = [
    'CSE',
    'ECE',
    'ME',
    'CE',
    'CSE',
    'CST',
    'CE',
    'ME',
    'EEE',
    'CAI',
    'AIM',
    'CST'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
        actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the same page (BranchList)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
      ),
      body: ListView(
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 50,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GridItem(
                index: index,
                name: names[index], // Pass name based on index
                branch: branches[index], // Pass branch based on index
              );
            },
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final int index;
  final String name; // Name for the grid item
  final String branch; // Branch for the grid item

  GridItem({
    required this.index,
    required this.name,
    required this.branch,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => getDetailsPage(index),
          ),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                'assets/image1.jpg', // Assuming images are named as image_0.jpg, image_1.jpg, etc.
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: $name', // Display name based on index
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    'Branch: $branch', // Display branch based on index
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getDetailsPage(int index) {
    switch (index) {
      case 0:
        return DetailsPage1(index: index);
      case 1:
        return DetailsPage2(index: index);
      case 2:
        return DetailsPage3(index: index);
      case 3:
        return DetailsPage4(index: index);
      case 4:
        return DetailsPage5(index: index);
      case 5:
        return DetailsPage6(index: index);
      case 6:
        return DetailsPage7(index: index);
      case 7:
        return DetailsPage8(index: index);
      case 8:
        return DetailsPage9(index: index);
      case 9:
        return DetailsPage10(index: index);
      case 10:
        return DetailsPage11(index: index);
      case 11:
        return DetailsPage12(index: index);
      default:
        throw Exception('Invalid index: $index');
    }
  }
}
