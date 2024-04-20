import 'package:flutter/material.dart';

class LibrarianPage extends StatefulWidget {
  @override
  _LibrarianPageState createState() => _LibrarianPageState();
}

class _LibrarianPageState extends State<LibrarianPage> {
  bool hasNoDues = false;
  bool overdueBooks = false;
  bool fines = false;
  bool lostBooks = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Librarian Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              title: Text('Overdue Books'),
              value: overdueBooks,
              onChanged: (value) {
                setState(() {
                  overdueBooks = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Fines'),
              value: fines,
              onChanged: (value) {
                setState(() {
                  fines = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Lost Books'),
              value: lostBooks,
              onChanged: (value) {
                setState(() {
                  lostBooks = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Submit the status of no dues
                if (hasNoDues) {
                  // Check if at least one category is selected
                  if (overdueBooks || fines || lostBooks) {
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
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
