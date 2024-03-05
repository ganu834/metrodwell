import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assessmentscan extends StatefulWidget {
  const Assessmentscan({Key? key}) : super(key: key);

  @override
  _AssessmentscanState createState() => _AssessmentscanState();
}

class _AssessmentscanState extends State<Assessmentscan> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  bool _showCard = false;
  bool _showAdditionalCards = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Metro Dwell'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    hintText: "Enter Name"),
              ),
            ),
            Flexible(
              child: TextField(
                controller: _idController,
                decoration: const InputDecoration(
                    labelText: 'ID',
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    hintText: "Enter ID"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle form submission here
                print('Name: ${_nameController.text}');
                print('ID: ${_idController.text}');
                setState(() {
                  _showCard = true;
                  _showAdditionalCards = true;
                });
              },
              child: const Text('Scan'),
            ),
            const SizedBox(height: 20), // Adding some space before the card
            if (_showCard)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // Left side image
                      SizedBox(
                        width: 150,
                        height: 200,
                        // Replace 'your_image.jpg' with the path to your image asset
                        child: Image.asset('your_image.jpg', fit: BoxFit.cover),
                      ),
                      const SizedBox(
                          width:
                              20), // Adding some space between image and names
                      // Right side names
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'ID',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  hintText: "Enter ID"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'Date',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  hintText: "Enter Date"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'Price',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  hintText: "Enter price"),
                            ),
                            // Add more names as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(
                height: 20), // Adding some space before the row of buttons
            if (_showAdditionalCards)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Perform action for QA Pass button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 100),
                    ),
                    child: const Center(child: Text('QA Pass')),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform action for QA Fail button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(150, 100),
                    ),
                    child: const Center(child: Text('QA Fail')),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    super.dispose();
  }
}
