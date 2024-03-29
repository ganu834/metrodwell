import 'package:flutter/material.dart';
import 'package:flutter_application_1/assests.dart';
import 'package:flutter_application_1/tests.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const AssestsPage(),
      const TestsPage(),
    ];

    return Scaffold(
      body: Center(
        child: pages[currentIndex],
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(179, 123, 117, 117),
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              color: Colors.white,
              height: 0.5,
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black87,
              elevation: 8.0,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Assests',
                  activeIcon: Icon(
                    Icons.home_filled,
                    color: Colors.black87,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.book_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Test',
                  activeIcon: Icon(
                    Icons.book,
                    color: Colors.black87,
                  ),
                ),
              ],
              currentIndex: currentIndex,
              onTap: _onItemTapped,
              showUnselectedLabels: true,
            ),
          ],
        ),
      ),
    );
  }
}
