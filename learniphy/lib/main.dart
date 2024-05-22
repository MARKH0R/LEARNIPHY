import 'package:flutter/material.dart';
import 'Home.dart'; // Import your home page file
import 'Profile.dart'; // Import your profile page file
import 'Chatbot.dart'; // Import your chatbot page file
import 'Task.dart'; // Import your

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Set initial selected index to 'Home'

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the selected page
    switch (index) {
      case 0:
      // Navigate to Home page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
      // Navigate to Profile page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
      case 2:
      // Navigate to Chatbot page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatbotPage()),
        );
        break;
      case 3:
      // Navigate to
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TaskScreen()),
        );
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Main Page'), // Placeholder content for the main page
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
