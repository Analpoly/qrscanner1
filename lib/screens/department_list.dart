import 'package:flutter/material.dart';
import 'package:qrscanner/components/const.dart';

class DepartmentList extends StatelessWidget {
  const DepartmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: primary,
      // backgroundColor: const Color.fromARGB(216, 203, 196, 196),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: orientation == Orientation.portrait ? 2 : 3, 
                crossAxisSpacing: 8, 
                mainAxisSpacing: 8,
                childAspectRatio: 2.5/3, 
              ),
              itemCount: 5, 
              itemBuilder: (context, index) {
                final titles = ["Electrical", "Plumping", "Civil", "Local Maintenance", "Electrical"];
                final images = [
                  'image/Electrical.png',
                  'image/Plumping.png',
                  'image/Civil.png',
                  'image/Local.png',
                  'image/Electrical.png'
                ];
                return buildCategoryContainer(
                  context,
                  title: titles[index],
                  imagePath: images[index],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

Widget buildCategoryContainer(BuildContext context,
    {required String title, required String imagePath}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: primary,
    ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
