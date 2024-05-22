import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday, August 19, 2020'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ONGOING TASKS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ListTile(
              title: Text('Meet with Jacob'),
              subtitle: Text('Today, 11 AM, at Lorem Cafe'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Edit')),
            ),
            ListTile(
              title: Text('Call Sandra (UI Team)'),
              subtitle: Text('Today, 2 PM, at Ipsum Studio'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Edit')),
            ),
            ListTile(
              title: Text('Appointment with Client'),
              subtitle: Text('Today, 4 PM, at Lorem Cafe'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Edit')),
            ),
            TextButton(onPressed: () {}, child: Text('More...')),
            SizedBox(height: 20),
            Text('FINISH TASKS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Brainstorming with Designer'),
              subtitle: Text('Today, 8 AM, at Lorem Cafe'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Review Landing Page'),
              subtitle: Text('Today, 2 PM, at Ipsum Studio'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
