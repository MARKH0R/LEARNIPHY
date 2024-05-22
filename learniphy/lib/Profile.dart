import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good day, Jack!'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('PROJECT', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.green,
                    child: Column(
                      children: [
                        Text('Landing Page Design', style: TextStyle(fontSize: 18, color: Colors.white)),
                        Text('8 tasks', style: TextStyle(fontSize: 14, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text('Book Illustration', style: TextStyle(fontSize: 18, color: Colors.white)),
                        Text('12 tasks', style: TextStyle(fontSize: 14, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.orange,
                    child: Column(
                      children: [
                        Text('PowerPoint Design', style: TextStyle(fontSize: 18, color: Colors.white)),
                        Text('8 tasks', style: TextStyle(fontSize: 14, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('PERSONAL TASKS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ListTile(
              leading: CircularProgressIndicator(value: 0.8),
              title: Text('Meeting with Design Team'),
              subtitle: Text('80%'),
            ),
            ListTile(
              leading: CircularProgressIndicator(value: 0.75),
              title: Text('Review New Product Design'),
              subtitle: Text('75%'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chatbot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Todo List',
          ),
        ],
        currentIndex: 0, // Highlight Home in the navigation bar
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
