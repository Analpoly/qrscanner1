import 'package:flutter/material.dart';
import 'package:qrscanner/components/const.dart';

class ProblemCard extends StatelessWidget {
  final String image;
  final String title;

  const ProblemCard({super.key, 
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: third,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 80,
            width: 110,
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// Data for problem items
final List<Map<String, String>> problemItems = [
  {
    'image': 'image/wiring.png',
    'title': 'Poor wiring',
  },
  {
    'image': 'image/overloading.png',
    'title': 'Circuit overloading',
  },
  {
    'image': 'image/grounding.png',
    'title': 'Grounding issues',
  },
  {
    'image': 'image/structuralprotection.png',
    'title': 'Lack of structural protection',
  },
];
