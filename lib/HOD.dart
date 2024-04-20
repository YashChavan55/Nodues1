// import 'package:flutter/material.dart';

// class HODPage extends StatefulWidget {
//   @override
//   _HODPageState createState() => _HODPageState();
// }

// class _HODPageState extends State<HODPage> {
//   bool hasNoDues = false;
//   bool academicDues = false;
//   bool libraryDues = false;
//   bool hostelDues = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('HOD Page'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'No Dues Confirmation:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             CheckboxListTile(
//               title: Text('I confirm that there are no pending dues.'),
//               value: hasNoDues,
//               onChanged: (value) {
//                 setState(() {
//                   hasNoDues = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Select the categories for no dues:',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             CheckboxListTile(
//               title: Text('Results'),
//               value: academicDues,
//               onChanged: (value) {
//                 setState(() {
//                   academicDues = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Lab Brokage'),
//               value: libraryDues,
//               onChanged: (value) {
//                 setState(() {
//                   libraryDues = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Documents'),
//               value: hostelDues,
//               onChanged: (value) {
//                 setState(() {
//                   hostelDues = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // TODO: Submit the status of no dues
//                 if (hasNoDues) {
//                   // Check if at least one category is selected
//                   if (academicDues || libraryDues || hostelDues) {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Success'),
//                           content:
//                               Text('No dues status submitted successfully.'),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('OK'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   } else {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Error'),
//                           content: Text(
//                               'Please select at least one category for no dues.'),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('OK'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                 } else {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text('Error'),
//                         content: Text(
//                             'Please confirm that there are no pending dues.'),
//                         actions: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('OK'),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//*********************************************************************************************** */
// import 'package:flutter/material.dart';

// class HODPage extends StatefulWidget {
//   @override
//   _HODPageState createState() => _HODPageState();
// }

// class _HODPageState extends State<HODPage> {
//   bool hasNoDues = false;
//   bool academicDues = false;
//   bool libraryDues = false;
//   bool hostelDues = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('HOD Page'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'No Dues Confirmation:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             CheckboxListTile(
//               title: Text('I confirm that there are no pending dues.'),
//               value: hasNoDues,
//               onChanged: (value) {
//                 setState(() {
//                   hasNoDues = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Select the categories for no dues:',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             CheckboxListTile(
//               title: Text('Results'),
//               value: academicDues,
//               onChanged: (value) {
//                 setState(() {
//                   academicDues = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Lab Breakage'),
//               value: libraryDues,
//               onChanged: (value) {
//                 setState(() {
//                   libraryDues = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: Text('Documents'),
//               value: hostelDues,
//               onChanged: (value) {
//                 setState(() {
//                   hostelDues = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // TODO: Submit the status of no dues
//                   if (hasNoDues) {
//                     // Check if at least one category is selected
//                     if (academicDues || libraryDues || hostelDues) {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: Text('Success'),
//                             content:
//                                 Text('No dues status submitted successfully.'),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text('OK'),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     } else {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: Text('Error'),
//                             content: Text(
//                                 'Please select at least one category for no dues.'),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text('OK'),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     }
//                   } else {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text('Error'),
//                           content: Text(
//                               'Please confirm that there are no pending dues.'),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('OK'),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                 ),
//                 child: Text('Submit'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//****************************************************************************************************** */
import 'package:flutter/material.dart';

class HODPage extends StatefulWidget {
  @override
  _HODPageState createState() => _HODPageState();
}

class _HODPageState extends State<HODPage> {
  bool hasNoDues = false;
  bool academicDues = false;
  bool libraryDues = false;
  bool hostelDues = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOD Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No Dues Confirmation:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('I confirm that there are no pending dues.'),
              value: hasNoDues,
              onChanged: (value) {
                setState(() {
                  hasNoDues = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Select the categories for no dues:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: Text('Results'),
              value: academicDues,
              onChanged: (value) {
                setState(() {
                  academicDues = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Lab Breakage'),
              value: libraryDues,
              onChanged: (value) {
                setState(() {
                  libraryDues = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Documents'),
              value: hostelDues,
              onChanged: (value) {
                setState(() {
                  hostelDues = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Submit the status of no dues
                  if (hasNoDues) {
                    // Check if at least one category is selected
                    if (academicDues || libraryDues || hostelDues) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Success'),
                            content:
                                Text('No dues status submitted successfully.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Error'),
                            content: Text(
                                'Please select at least one category for no dues.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text(
                              'Please confirm that there are no pending dues.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
