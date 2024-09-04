import 'package:flutter/material.dart';
import 'package:qrscanner/components/Departmentcards..dart';
import 'package:qrscanner/components/const.dart';

class DepartmentList extends StatelessWidget {
  const DepartmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: primary,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Container(
                height: 610,
                decoration: const BoxDecoration(
                  color: second,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(31),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 15,
                        runSpacing: 12,
                        children: [
                          DepartmentCard(
                            imagePath: "image/Electrical.png",
                            title: "E l e c t r i c a l",
                          ),
                          DepartmentCard(
                            imagePath: "image/Plumbing.png",
                            title: "P l u m b i n g",
                          ),
                          DepartmentCard(
                            imagePath: "image/Civil.png",
                            title: "C i v i l",
                          ),
                          DepartmentCard(
                            imagePath: "image/Local.png",
                            title: "M a i n t e n a n c e",
                          ),
                          DepartmentCard(
                            imagePath: "image/It.png",
                            title: "I t",
                          ),
                          DepartmentCard(
                            imagePath: "image/Biomedical.png",
                            title: "B i o m e d i c a l",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

