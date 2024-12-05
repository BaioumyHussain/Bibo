import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'progress_screen.dart'; // Import your ProgressScreen

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hallo, Affandi',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          Text(
            "Let's Learn Now!",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        _buildNotificationIcon(),
        IconButton(
          icon: Icon(FontAwesomeIcons.search, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildNotificationIcon() {
    return Stack(
      children: [
        IconButton(
          icon: Icon(FontAwesomeIcons.bell, color: Colors.black),
          onPressed: () {},
        ),
        Positioned(
          right: 11,
          top: 11,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(minWidth: 14, minHeight: 14),
            child: Text(
              '4',
              style: TextStyle(color: Colors.white, fontSize: 8),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dashboard Content Here",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // Add more content if necessary
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0, // Home tab is selected by default
      onTap: (index) {
        if (index == 2) {
          // Navigate to ProgressScreen if the progress tab is clicked
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProgressScreen()),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home, color: Colors.blue),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.book, color: Colors.grey),
          label: 'Course',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.star, color: Colors.blue),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user, color: Colors.grey),
          label: 'Profile',
        ),
      ],
    );
  }
}
