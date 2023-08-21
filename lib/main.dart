import 'package:flutter/material.dart';
import 'package:practice/AttendancePage.dart';
import 'package:practice/ChatPage.dart';
import 'package:practice/FeedbackPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _selectedIndex = 1;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [

    FeedbackPage(),

    AttendancePage(),

    Center(child: Text("Upcoming Class page", style: TextStyle(fontSize: 50),)),

    ChatPage(),

    Center(child: Text("Menu Page", style: TextStyle(fontSize: 50),)),

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.feedback_outlined), label: 'Feedback'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Attandance'),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Upcoming Class'),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer_outlined), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}

