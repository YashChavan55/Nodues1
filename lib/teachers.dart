import 'package:flutter/material.dart';

class teachers extends StatefulWidget {
  const teachers({super.key});
  @override
  State createState() => _teachers();
}

class _teachers extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'No Dues',
              style: TextStyle(fontWeight: FontWeight.w800),
            )));
  }
}

//  SingleChildScrollView(
//           child: Center(
//               child: Column(children: [
//         const SizedBox(
//           height: 40,
//         ),
//         const Text(
//           " Select Your DashBoard ",
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 30,
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//           // card 1 for navigation of teachers to their page
//           DashboardCard(
//             title: 'Students',
//             icon: Icons.people,
//             onTap: () {
//               // Navigate to the Teachers page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => teachers()),
//               );
//             },
//           ),
//           const SizedBox(
//             width: 20,
//           ),

//           DashboardCard(
//             title: 'Office Dept',
//             icon: Icons.file_copy_sharp,
//             onTap: () {
//               // Navigate to the Teachers page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => teachers()),
//               );
//             },
//           ),
//         ]),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//           // card 1 for navigation of teachers to their page
//           DashboardCard(
//             title: 'TPO DEPT',
//             icon: Icons.person_2,
//             onTap: () {
//               // Navigate to the Teachers page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => teachers()),
//               );
//             },
//           ),
//           const SizedBox(
//             width: 20,
//           ),

//           DashboardCard(
//             title: 'HOD DEPT',
//             icon: Icons.person,
//             onTap: () {
//               // Navigate to the Teachers page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => teachers()),
//               );
//             },
//           ),
//         ]),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//           // card 1 for navigation of teachers to their page
//           DashboardCard(
//             title: '    Librarian',
//             icon: Icons.note,
//             onTap: () {
//               // Navigate to the Teachers page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => teachers()),
//               );
//             },
//           ),
//           const SizedBox(
//             width: 20,
//           ),

//           DashboardCard(
//             title: 'Principal Sir',
//             icon: Icons.person,
//             onTap: () {
//               // Navigate to the Teachers page
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => teachers()),
//               );
//             },
//           ),
//         ]),
//       ]
//       )
//       )
//       );
//       }
//       }
