import 'package:flutter/material.dart';
import 'Cst_details/CstDetailsPage1.dart';
import 'Cst_details/CstDetailsPage2.dart';
import 'branchlist.dart';
class CstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer Science and Technology Section'),
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
                            builder: (context) => CstDetailsPage1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        color: Colors.blue,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
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
                            builder: (context) => CstDetailsPage2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      width: 250, 
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        color: Colors.green,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/secb.jpg", // Replace with your item 2 image path
                          fit: BoxFit.cover,
                        ),
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
