import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestsPage extends StatelessWidget {
  const TestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tests Page'),
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
                  title: Text('test 1'),
                ),
                Divider(
                  thickness: 2.0,
                ),
                ListTile(
                  title: Text('test 2'),
                ),
                Divider(
                  thickness: 2.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
