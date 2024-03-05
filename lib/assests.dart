import 'package:flutter/material.dart';
import 'package:flutter_application_1/createassests.dart';

class AssestsPage extends StatelessWidget {
  const AssestsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Page'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Createassests(),
                ),
              );
            },
            child: const Text(
              'Create Assets +',
              style: TextStyle(color: Colors.black),
            ),
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
                                title: Text(' Name:-Lawn Mover'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Date of procurement:-20000'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Price:-1000'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('Date of Expiry:-Jan 15 2025'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Status:-Active'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Icon(Icons.edit),
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
                                title: Text(' Name:-Lawn Mover'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Date of procurement:-20000'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Price:-1000'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('Date of Expiry:-Jan 15 2025'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Status:-Active'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Icon(Icons.edit),
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
