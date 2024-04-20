import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  bool hasNoDues = false;
  bool academicDues = false;
  bool libraryDues = false;
  bool hostelDues = false;
  bool paperwork = false;
  bool equipment = false;
  bool payments = false;

  bool hodStatus = false;
  bool tpoStatus = false;
  bool librarianStatus = false;
  bool officeStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Authority Status:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('HOD: ${hodStatus ? 'No Dues' : 'Pending'}'),
              Text('TPO: ${tpoStatus ? 'No Dues' : 'Pending'}'),
              Text('Librarian: ${librarianStatus ? 'No Dues' : 'Pending'}'),
              Text('Office: ${officeStatus ? 'No Dues' : 'Pending'}'),
              SizedBox(height: 20),
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
                title: Text('Academic Dues'),
                value: academicDues,
                onChanged: (value) {
                  setState(() {
                    academicDues = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Library Dues'),
                value: libraryDues,
                onChanged: (value) {
                  setState(() {
                    libraryDues = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Hostel Dues'),
                value: hostelDues,
                onChanged: (value) {
                  setState(() {
                    hostelDues = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Paperwork'),
                value: paperwork,
                onChanged: (value) {
                  setState(() {
                    paperwork = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Equipment'),
                value: equipment,
                onChanged: (value) {
                  setState(() {
                    equipment = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Payments'),
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
                  // Update status of HOD based on no dues submission
                  if (hasNoDues) {
                    setState(() {
                      hodStatus = true;
                    });
                  }
                  // Additional logic for submitting no dues status if required
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
