import 'package:flutter/material.dart';
import 'createassessment.dart';

class TestsPage extends StatelessWidget {
  const TestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment Page'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Createassessment()), // Corrected constructor call
              );
            },
            child: const Text('Create Assessment +'),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 2.0,
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 200,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('Assessment Name:-January 2024'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('total number of items:-20000'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('QA Pass:-10000'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('QA Fail:-10000'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('Assessment Name:-February 2024'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('total number of items:-30000'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('QA Pass:-20000'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('QA Fail:-10000'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
