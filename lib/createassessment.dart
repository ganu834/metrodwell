import 'package:flutter/material.dart';
import 'assessmentscan.dart';

class Createassessment extends StatefulWidget {
  const Createassessment({Key? key}) : super(key: key);

  @override
  _CreateassestsState createState() => _CreateassestsState();
}

class _CreateassestsState extends State<Createassessment> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
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
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  print('Name: ${_nameController.text}');
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');

                  // Navigate to the next page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Assessmentscan()), // Replace NextPage() with the desired page
                  );
                },
                child: const Text('START'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
