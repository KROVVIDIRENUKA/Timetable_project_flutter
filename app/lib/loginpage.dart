import 'package:flutter/material.dart';
import 'branchlist.dart'; // Importing the BranchList page
import 'facultypage.dart'; // Importing the GridPage page

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Our App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: _buildLoginForm(context, "Student"),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: _buildLoginForm(context, "Faculty"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, String userType) {
    String username = "";
    String password = "";

    return Container(
      width: 250,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            userType + ' Login',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              username = value;
            },
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              password = value;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Perform Login
              _performLogin(username, password, userType, context);
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

  void _performLogin(String username, String password, String userType, BuildContext context) {
    // Hardcoded default username and password for testing
    const String defaultStudentUsername = 'student';
    const String defaultStudentPassword = 'password';
    const String defaultFacultyUsername = 'faculty';
    const String defaultFacultyPassword = 'password';

    if (userType == "Student" && username == defaultStudentUsername && password == defaultStudentPassword) {
      // Navigate to the BranchList page after successful login for student
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BranchList()),
      );
    } else if (userType == "Faculty" && username == defaultFacultyUsername && password == defaultFacultyPassword) {
      // Navigate to the GridPage page after successful login for faculty
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GridPage()),
      );
    } else {
      // Show error message or handle invalid login credentials
      print('Invalid username or password');
    }
  }
}
