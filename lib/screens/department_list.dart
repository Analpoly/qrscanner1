import 'package:flutter/material.dart';
import 'package:qrscanner/components/Departmentcards..dart';
import 'package:qrscanner/components/const.dart';
import 'package:qrscanner/screens/Biomedicalproblemslists.dart';
import 'package:qrscanner/screens/Civilproblemslist.dart';
import 'package:qrscanner/screens/ElectricalproblemsList.dart';
import 'package:qrscanner/screens/Itproblemslists.dart';
import 'package:qrscanner/screens/Maintenanceproblemslist.dart';
import 'package:qrscanner/screens/Plumbingproblemslist.dart';

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
              padding: const EdgeInsets.only(top: 235),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 600,
                decoration: const BoxDecoration(
                  color: third,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(31),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Wrap(
                        spacing: 15,
                        runSpacing: 12,
                        children: [
                          DepartmentCard(
                            imagePath: "image/Electrical.png",
                            title: "ELECTRICAL", nextPage: ElectricalProblemSelectionPage(),
                          ),
                          DepartmentCard(
                            imagePath: "image/Plumbing.png",
                            title: "PLUMBING", nextPage: PlumbingProblemSelectionPage(),
                          ),
                          DepartmentCard(
                            imagePath: "image/Civil.png",
                            title: "CIVIL", nextPage: CivilProblemSelectionPage(),
                          ),
                          DepartmentCard(
                            imagePath: "image/Local.png",
                            title: "MAINTENANCE", nextPage: MaintenanceProblemSelectionPage(),
                          ),
                          DepartmentCard(
                            imagePath: "image/It.png",
                            title: "IT", nextPage: ItProblemSelectionPage(),
                          ),
                          DepartmentCard(
                            imagePath: "image/Biomedical.png",
                            title: "BIOMEDICAL", nextPage: BiomedicalProblemSelectionPage(),
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

