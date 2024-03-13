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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Branches',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BranchList(),
    );
  }
}

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
    "MECHANICAL"
  ];

  final List<String> images = [
     "assets/cse.png",
    "assets/cst.png",
    "assets/cai.png",
    "assets/aiml.png",
    "assets/ece.png",
    "assets/ect.png",
    "assets/eee.png",
    "assets/civil.png",
    "assets/mech.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/background.jpg"), // Background image path
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Branches'),
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
                      case "MECHANICAL":
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
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Center(
                            child: Text(
                              branches[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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

// Repeat the same for other section pages (CAI, AIML, ECE, ECT, EEE, CIVIL, MECHANICAL)
