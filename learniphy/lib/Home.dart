import 'package:flutter/material.dart';
import 'Task.dart'; // Import the TaskScreen


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classroom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClassListScreen(),
    );
  }
}

class ClassListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Classroom'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ClassCard(
            title: 'English',
            subtitle: 'Morning Batch',
            teacher: 'Rudraneel Dhar',
            color: Colors.blue,
            image: Icons.book,
          ),
          ClassCard(
            title: 'Design Batch 2',
            subtitle: 'Bangalore',
            teacher: 'Design Studio',
            color: Colors.orange,
            image: Icons.directions_bike,
          ),
          ClassCard(
            title: 'UX Designers',
            subtitle: 'Bangalore',
            teacher: 'Design Studio',
            color: Colors.pink,
            image: Icons.tablet_mac,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.class_), label: 'Classes'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: 'To-do'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        onTap: (int index) {
          switch (index) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskScreen()), // Navigate to TaskScreen
              );
              break;
            default:
            // Navigate to other options if needed
              break;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class ClassCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? teacher;
  final Color? color;
  final IconData? image;

  ClassCard({this.title, this.subtitle, this.teacher, this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.blue, // Providing default color if null
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '', // Providing default value if null
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              subtitle ?? '', // Providing default value if null
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            SizedBox(height: 5),
            Text(
              teacher ?? '', // Providing default value if null
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(image ?? Icons.book, size: 40, color: Colors.white70), // Providing default icon if null
            ),
          ],
        ),
      ),
    );
  }
}
