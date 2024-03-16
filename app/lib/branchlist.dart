import 'package:flutter/material.dart';
import 'CsePage.dart';
import 'AimlPage.dart';
import 'CaiPage.dart';
import 'CivilPage.dart';
import 'EcePage.dart';
import 'EctPage.dart';
import 'EeePage.dart';
import 'MechanicalPage.dart';
import 'CstPage.dart';
import 'loginpage.dart';

class BranchList extends StatelessWidget {
  final List<String> branches = [
    "CSE",
    "CST",
    "CAI",
    "AIML",
    "ECE",
    "ECT",
    "EEE",
    "CIVIL",
    "MECH"
  ];

  final List<String> images = [
    "assets/cse1.png",
    "assets/cst1.png",
    "assets/cai1.jpeg",
    "assets/aim1.jpg",
    "assets/ece1.png",
    "assets/ect1.png",
    "assets/eee1.png",
    "assets/civill.jpeg",
    "assets/mechanical.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background2.jpeg"), // Background image path
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Branches'),
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
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 50,
                mainAxisSpacing: 50,
              ),
              itemCount: branches.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to section page for the selected branch
                    switch (branches[index]) {
                      case "CSE":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CsePage()),
                        );
                        break;
                      case "CST":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CstPage()),
                        );
                        break;
                      case "CAI":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CaiPage()),
                        );
                        break;
                      case "AIML":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AimlPage()),
                        );
                        break;
                      case "ECE":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EcePage()),
                        );
                        break;
                      case "ECT":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EctPage()),
                        );
                        break;
                      case "EEE":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EeePage()),
                        );
                        break;
                      case "CIVIL":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CivilPage()),
                        );
                        break;
                      case "MECH":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MechanicalPage()),
                        );
                        break;
                      default:
                        break;
                    }
                  },
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black.withOpacity(0.6),
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Center(
                            child: Text(
                              branches[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
