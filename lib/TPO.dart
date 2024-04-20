import 'package:flutter/material.dart';

class TPOPage extends StatefulWidget {
  @override
  _TPOPageState createState() => _TPOPageState();
}

class _TPOPageState extends State<TPOPage> {
  bool academicDues = false;
  bool libraryDues = false;
  bool hostelDues = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TPO Page'),
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
              title: Text('Offer Letter'),
              value: academicDues,
              onChanged: (value) {
                setState(() {
                  academicDues = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Certificates '),
              value: libraryDues,
              onChanged: (value) {
                setState(() {
                  libraryDues = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Documents '),
              value: hostelDues,
              onChanged: (value) {
                setState(() {
                  hostelDues = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Submit the status of no dues
                if (academicDues || libraryDues || hostelDues) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Success'),
                        content: Text('No dues status submitted successfully.'),
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
