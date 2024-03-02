import 'package:flutter/material.dart';

// class AssestsPage extends StatelessWidget {
//   const AssestsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Assests Page'),
//       ),

//       body: ListView(
//         children: const [
//           ListTile(
//             title: Text('assests 3'),
//           ),
//           Divider(
//             thickness: 2.0,
//           ),
//           ListTile(
//             title: Text('assests 2'),
//           ),
//           Divider(
//             thickness: 2.0,
//           )
//           // Add more ListTiles as needed
//         ],
//       ),
//     );
//   }
// }

class AssestsPage extends StatelessWidget {
  const AssestsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Page'),
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
