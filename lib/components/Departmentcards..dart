import 'package:flutter/material.dart';
import 'package:qrscanner/components/const.dart';

class DepartmentCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Widget nextPage;  // Add this to define the page to navigate to

  const DepartmentCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.nextPage,  // Required for navigation
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      child: InkWell(  // Use InkWell for a material design ripple effect on tap
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Card(
          color: third,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath, height: 80, width: 100),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
