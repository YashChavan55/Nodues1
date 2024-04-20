import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileCard(context),
            SizedBox(height: 20),
            _buildButton(
                context, 'Raise Request', Icons.add_alert, Colors.orange),
            SizedBox(height: 20),
            _buildButton(context, 'Check Status', Icons.info, Colors.blue),
            SizedBox(height: 20),
            _buildButton(context, 'Print Form', Icons.print, Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name: Yash Chavan'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: yashchavan@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('University: SPPU University'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address: 123 Street, Pune'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      BuildContext context, String text, IconData icon, Color color) {
    return ElevatedButton.icon(
      onPressed: () {
        // Add corresponding logic for each button
        _handleButtonPress(context, text);
      },
      icon: Icon(icon),
      label: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        // primary: color,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  void _handleButtonPress(BuildContext context, String action) {
    // Perform action based on the button pressed
    switch (action) {
      case 'Raise Request':
        _showSnackbar(context, 'Request raised successfully!');
        break;
      case 'Check Status':
        _showSnackbar(context, 'Checking status...');
        break;
      case 'Print Form':
        _showSnackbar(context, 'Printing form...');
        break;
    }
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
