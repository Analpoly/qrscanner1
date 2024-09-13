
import 'package:flutter/material.dart';
import 'package:qrscanner/components/const.dart';

class MaintenanceProblemSelectionPage extends StatefulWidget {
  const MaintenanceProblemSelectionPage({super.key});

  @override
  _ProblemSelectionPageState createState() => _ProblemSelectionPageState();
}

class _ProblemSelectionPageState extends State<MaintenanceProblemSelectionPage> {
  String? _selectedOption;
  String? _selectedCategory;
  String _searchQuery = '';
  final List<String> _categories = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'New',
  ];

  List<String> get _filteredCategories {
    return _categories
        .where((category) => category.toLowerCase().contains(_searchQuery.toLowerCase()) && category != 'New')
        .toList();
  }

  void _showCategorySelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: [
                        ..._filteredCategories.map((category) {
                          return ListTile(
                            title: Text(category),
                            onTap: () {
                              setState(() {
                                _selectedCategory = category;
                              });
                              Navigator.pop(context);
                            },
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'New',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'New';
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 210, right: 120, left: 120),
                      child: Column(
                        children: [
                          Image.asset(
                            "image/Local.png",
                            height: 85,
                            width: 85,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "MAINTENANCE",
                            style: TextStyle(fontSize: 18, color: third),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 370),
              child: Container(
                decoration: const BoxDecoration(
                  color: third,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.25,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          "SERVICE FORM",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RadioListTile<String>(
                              title: const Text(
                                "NORMAL",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue),
                              ),
                              value: "NORMAL",
                              groupValue: _selectedOption,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedOption = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text(
                                "MODERATE",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.orange),
                              ),
                              value: "MODERATE",
                              groupValue: _selectedOption,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedOption = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text(
                                "EMERGENCY",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.red),
                              ),
                              value: "EMERGENCY",
                              groupValue: _selectedOption,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedOption = value;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () {setState(() {
                              _showCategorySelector(context);
                            }); },
                            child: InputDecorator(
                              decoration: InputDecoration(
                                labelText: _selectedCategory == null
                                    ? 'Select Problems'
                                    : _selectedCategory,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const SizedBox.shrink(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        if (_selectedCategory == 'New') // Show only if "New" is selected
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              maxLines: 3,
                              decoration: InputDecoration(
                                label: const Text(
                                  "Problem",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: const Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: const Text(
                                "Mobile Number",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Handle submit action
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            backgroundColor: primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            "SUBMIT",
                            style: TextStyle(
                              fontSize: 18,
                              color: third,
                            ),
                          ),
                        ),
                      ],
                    ),
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
