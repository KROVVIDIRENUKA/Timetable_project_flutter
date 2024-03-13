import 'package:flutter/material.dart';
import 'Ece_details/EceDetailsPage1.dart';
import 'Ece_details/EceDetailsPage2.dart';
import 'Ece_details/EceDetailsPage3.dart';
import 'Ece_details/EceDetailsPage4.dart';

class EcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ECE Section'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/ece.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EceDetailsPage1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 300,
                      height: 300,
                      color: Colors.blue,
                      child: Image.asset(
                        "assets/ece 1.jpeg", // Replace with your item 1 image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EceDetailsPage2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 300,
                      height: 300,
                      color: Colors.green,
                      child: Image.asset(
                        "assets/ece 2.jpeg", // Replace with your item 2 image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EceDetailsPage3()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 200,
                      height: 200,
                      color: Colors.red,
                      child: Image.asset(
                        "assets/ece 3.png", // Replace with your item 3 image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EceDetailsPage4()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 200,
                      height: 200,
                      color: Colors.yellow,
                      child: Image.asset(
                        "assets/ece 4.jpg", // Replace with your item 4 image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
