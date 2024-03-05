import 'package:flutter/material.dart';

class Createassests extends StatefulWidget {
  const Createassests({Key? key}) : super(key: key);

  @override
  _CreateassestsState createState() => _CreateassestsState();
}

class _CreateassestsState extends State<Createassests> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _failedController = TextEditingController();
  final TextEditingController _idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Assets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Asset Name:'),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Enter  name',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text('Asset Description:'),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Add Description',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text('Asset image:'),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Add  Image:',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text('Location:'),
              TextField(
                controller: _failedController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Add Location',
                ),
              ),
              const SizedBox(height: 16.0),
              const Text('Asset procurement date:'),
              TextField(
                controller: _idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Add date',
                ),
              ),
              const Text('Asset Expiry date:'),
              TextField(
                controller: _idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Add date',
                ),
              ),
              const Text('Asset Active status:'),
              TextField(
                controller: _idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Pass/Fail',
                ),
              ),
              const Text('Price:'),
              TextField(
                controller: _idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  hintText: 'Add price',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  print('Name: ${_nameController.text}');
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');
                  print('QA Failed: ${_failedController.text}');
                  print('Id: ${_idController.text}');
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _failedController.dispose();
    _idController.dispose();
    super.dispose();
  }
}
