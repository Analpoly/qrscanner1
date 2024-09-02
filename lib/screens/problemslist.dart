import 'package:flutter/material.dart';
import 'package:qrscanner/components/const.dart';

class ProblemSelectionPage extends StatefulWidget {
  @override
  _ProblemSelectionPageState createState() => _ProblemSelectionPageState();
}

class _ProblemSelectionPageState extends State<ProblemSelectionPage> {
  String? selectedProblem;
  TextEditingController problemDescriptionController = TextEditingController();

  final List<String> problems = [
    "Electrical",
    "Plumping",
    "Civil",
    "Local Maintenance"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: second,
      body: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.85,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select a problem:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Column(
                children: problems.map((problem) {
                  return RadioListTile<String>(
                    title: Text(
                      problem,
                      style: TextStyle(color: Colors.white),
                    ),
                    value: problem,
                    groupValue: selectedProblem,
                    onChanged: (value) {
                      setState(() {
                        selectedProblem = value;
                      });
                    },
                    activeColor: Colors.white,
                    selected: selectedProblem == problem,
                    selectedTileColor: primary,
                        fillColor: MaterialStateProperty.all(Colors.white),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              TextField(
                controller: problemDescriptionController,
                decoration: InputDecoration(
                  labelText: 'Describe the problem',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedProblem != null &&
                        problemDescriptionController.text.isNotEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Problem Submitted'),
                            content: Text(
                                'Problem: $selectedProblem\nDescription: ${problemDescriptionController.text}'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Please select a problem and describe it'),
                        ),
                      );
                    }
                  },
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProblemSelectionPage(),
  ));
}
