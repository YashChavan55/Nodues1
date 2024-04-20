import 'package:flutter/material.dart';

class OfficePage extends StatefulWidget {
  @override
  _OfficePageState createState() => _OfficePageState();
}

class _OfficePageState extends State<OfficePage> {
  bool hasNoDues = false;
  bool paperwork = false;
  bool equipment = false;
  bool payments = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Office Page'),
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
              title: Text('Fees'),
              value: paperwork,
              onChanged: (value) {
                setState(() {
                  paperwork = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Scholarship'),
              value: equipment,
              onChanged: (value) {
                setState(() {
                  equipment = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Hostel Due'),
              value: payments,
              onChanged: (value) {
                setState(() {
                  payments = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Submit the status of no dues
                if (hasNoDues) {
                  // Check if at least one category is selected
                  if (paperwork || equipment || payments) {
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
