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
              children: const [
                ListTile(
                  title: Text('Assets 3'),
                ),
                Divider(
                  thickness: 2.0,
                ),
                ListTile(
                  title: Text('Assets 2'),
                ),
                Divider(
                  thickness: 2.0,
                ),
                // Add more ListTiles as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
