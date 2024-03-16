import 'package:flutter/material.dart';
import 'subsections.dart';

class SectionPage extends StatelessWidget {
  final String branch;

  SectionPage({required this.branch});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/background2.jpeg'), // Set your background image here
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sections for $branch'),
        ),
        body: Center(
          child: GridView.builder(
            padding: EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.5,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return buildSectionItem(
                context,
                'Section ${String.fromCharCode(65 + index)}',
                'assets/section_${index + 1}.jpg', // Assuming image names are section_1.jpg, section_2.jpg, etc.
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubSectionPage(
                        branch: branch,
                        section: 'Section ${String.fromCharCode(65 + index)}',
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildSectionItem(
    BuildContext context,
    String sectionName,
    String imagePath,
    VoidCallback onTapCallback,
  ) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.black.withOpacity(0.5),
              child: Text(
                sectionName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
