import 'package:flutter/material.dart';
import 'Cse_details/CseDetailsPage1.dart';
import 'Cse_details/CseDetailsPage2.dart';
import 'Cse_details/CseDetailsPage3.dart';
import 'Cse_details/CseDetailsPage4.dart';
import 'branchlist.dart';
class CsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cse Section'),
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
                            builder: (context) => CseDetailsPage1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/seca.jpg", // Replace with your item 1 image path
                          fit: BoxFit.cover,
                        ),
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
                            builder: (context) => CseDetailsPage2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/secb.jpg", // Replace with your item 2 image path
                          fit: BoxFit.cover,
                        ),
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
                            builder: (context) => CseDetailsPage3()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/secc.jpg", // Replace with your item 3 image path
                          fit: BoxFit.cover,
                        ),
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
                            builder: (context) => CseDetailsPage4()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/secd.jpg", // Replace with your item 4 image path
                          fit: BoxFit.cover,
                        ),
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
