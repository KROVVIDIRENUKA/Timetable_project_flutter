import 'package:flutter/material.dart';
import 'Eee_details/EeeDetailsPage1.dart';
import 'Eee_details/EeeDetailsPage2.dart';

class EeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EEE Section'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/eee.jpg"),
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
                            builder: (context) => EeeDetailsPage1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                      child: Image.asset(
                        "assets/eee 1.jpeg", // Replace with your item 1 image path
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
                            builder: (context) => EeeDetailsPage2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 200,
                      height: 200,
                      color: Colors.green,
                      child: Image.asset(
                        "assets/eee 2.jpg", // Replace with your item 2 image path
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
