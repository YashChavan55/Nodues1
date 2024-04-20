import 'package:flutter/material.dart';
import 'package:no_dues1/Librarian.dart';
import 'package:no_dues1/NotificationPage.dart';
import 'package:no_dues1/Office.dart';
import 'package:no_dues1/Principal.dart';
import 'package:no_dues1/Searchpage.dart';
import 'package:no_dues1/Student.dart';

import 'HOD.dart';
import 'Profilepage.dart';
import 'TPO.dart';

// void main() {
//   runApp(NoDuesApp());
// }

// class NoDuesApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'No Dues App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BottomNavigation(),
//     );
//   }
// }

// class BottomNavigation extends StatefulWidget {
//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int _selectedIndex = 0;

//   static List<Widget> _pages = <Widget>[
//     HomePage(),
//     PlaceholderWidget(),
//     PlaceholderWidget(),
//     PlaceholderWidget(),
//   ];

//   // void _onItemTapped(int index) {
//   //   setState(() {
//   //     _selectedIndex = index;
//   //   });
//   // }
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     // Navigate to new page based on index
//     switch (index) {
//       // case 0:
//       //   Navigator.of(context)
//       //       .push(MaterialPageRoute(builder: (_) => ProfilePage()));
//       //   break;
//       case 1:
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (_) => SearchPage()));
//         break;
//       case 2:
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (_) => NotificationPage()));
//         break;
//       case 3:
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (_) => ProfilePage()));
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "No Dues ",
//           style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
//         ),
//       ),
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         // backgroundColor:
//         //     Colors.blue, // Set the color of the bottom navigation bar
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             backgroundColor: Colors.blue,
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 child: Text(
//                   "Select Your DashBoard ",
//                   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
//                 ),
//               ),
//               const SizedBox(height: 60),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   buildCard(context, 'HOD', Icons.person),
//                   const SizedBox(width: 20),
//                   buildCard(context, 'Librarian', Icons.library_books),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   buildCard(context, 'TPO', Icons.work),
//                   SizedBox(width: 20),
//                   buildCard(context, 'Office Section', Icons.account_balance),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   buildCard(context, 'Student', Icons.work),
//                   SizedBox(width: 20),
//                   buildCard(context, 'Principal', Icons.account_balance),
//                 ],
//               ),
//               // SizedBox(height: 20),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //   children: [
//               //     buildCard(context, 'Principal', Icons.school),
//               //   ],
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildCard(BuildContext context, String authority, IconData icon) {
//     return Expanded(
//       child: GestureDetector(
//         onTap: () {
//           // Navigate to the dues status page for the selected authority
//           if (authority == 'HOD') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HODPage()),
//             );
//           } else if (authority == 'Librarian') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => LibrarianPage()),
//             );
//           } else if (authority == 'TPO') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => TPOPage()),
//             );
//           } else if (authority == 'Office Section') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => OfficePage()),
//             );
//           } else if (authority == 'Student') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => StudentPage()),
//             );
//           } else if (authority == 'Principal') {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => PrincipalPage()),
//             );
//           }
//         },
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           elevation: 6,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 icon,
//                 size: 40,
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 authority,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PlaceholderWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white, // Set the color of the placeholder widget
//       child: const Center(
//         child: Text(
//           'Page Under Construction',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// class DuesStatusPage extends StatelessWidget {
//   final String authority;

//   DuesStatusPage({required this.authority});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dues Status - $authority'),
//       ),
//       body: Center(
//         child: Text('Dues Status Page for $authority'),
//       ),
//     );
//   }
// }

//********************************************************************************************************************* */
// import 'package:flutter/material.dart';
// import 'package:no_dues1/Librarian.dart';
// import 'package:no_dues1/NotificationPage.dart';
// import 'package:no_dues1/Office.dart';
// import 'package:no_dues1/Principal.dart';
// import 'package:no_dues1/Searchpage.dart';
// import 'package:no_dues1/Student.dart';

// import 'HOD.dart';
// import 'Profilepage.dart';
// import 'TPO.dart';

void main() {
  runApp(NoDuesApp());
}

class NoDuesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'No Dues App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomePage(),
    PlaceholderWidget(),
    PlaceholderWidget(),
    PlaceholderWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to new page based on index
    switch (index) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => SearchPage()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => NotificationPage()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ProfilePage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "No Dues ",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                child: Text(
                  "Select Your DashBoard ",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                ),
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCard(context, 'HOD', Icons.person),
                  const SizedBox(width: 20),
                  buildCard(context, 'Librarian', Icons.library_books),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCard(context, 'TPO', Icons.work),
                  const SizedBox(width: 20),
                  buildCard(context, 'Office Section', Icons.account_balance),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCard(context, 'Student', Icons.work),
                  const SizedBox(width: 20),
                  buildCard(context, 'Principal', Icons.account_balance),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String authority, IconData icon) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Navigate to the corresponding page for the selected authority
          if (authority == 'HOD') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HODPage()));
          } else if (authority == 'Librarian') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LibrarianPage()));
          } else if (authority == 'TPO') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TPOPage()));
          } else if (authority == 'Office Section') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OfficePage()));
          } else if (authority == 'Student') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StudentPage()));
          } else if (authority == 'Principal') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PrincipalPage()));
          }
        },
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.blue, // Adjust the color of the icon
              ),
              const SizedBox(height: 20),
              Text(
                authority,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Adjust the color of the text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set the color of the placeholder widget
      child: const Center(
        child: Text(
          'Page Under Construction',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class DuesStatusPage extends StatelessWidget {
  final String authority;

  DuesStatusPage({required this.authority});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dues Status - $authority'),
      ),
      body: Center(
        child: Text('Dues Status Page for $authority'),
      ),
    );
  }
}
//************************************************************************************************************************ */



