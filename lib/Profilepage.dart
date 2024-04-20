import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Yash Chavan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'yashchavan@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Edit Profile'),
                onTap: () {
                  // Navigate to edit profile page
                },
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text('Change Password'),
                onTap: () {
                  // Navigate to change password page
                },
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification Settings'),
                onTap: () {
                  // Navigate to notification settings page
                },
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Add logout logic
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
