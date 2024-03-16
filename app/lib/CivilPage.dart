import 'package:flutter/material.dart';
import 'Civil_details/CivilDetailsPage1.dart';
import 'Civil_details/CivilDetailsPage2.dart';
import 'branchlist.dart';
class CivilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Civil Section'),
        actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the same page (BranchList)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BranchList()),
                );
              },
            ),
          ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background2.jpeg"),
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
                            builder: (context) => CivilDetailsPage1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      color: Colors.blue,
                      child: Image.asset(
                        "assets/seca.jpg", // Replace with your item 1 image path
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
                            builder: (context) => CivilDetailsPage2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      color: Colors.green,
                      child: Image.asset(
                        "assets/secb.jpg", // Replace with your item 2 image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 200.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
