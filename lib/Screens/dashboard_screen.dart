import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:e_learning_app_gp/config/routes/screen_export.dart';

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
          Row(
            children: [
              Expanded(
                child: _buildCard(
                  icon: FontAwesomeIcons.graduationCap,
                  iconColor: Colors.green,
                  title: 'Enrollment',
                  subtitle: '14 Video',
                  progress: 0.5,
                  progressColor: Colors.green,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: _buildCard(
                  icon: FontAwesomeIcons.clock,
                  iconColor: Colors.orange,
                  title: 'Learning Time',
                  subtitle: '88h 31m',
                  progress: 0.75,
                  progressColor: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          _buildProgressCard(),
          SizedBox(height: 16),
          _buildCourseSection(),
        ],
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required double progress,
    required Color progressColor,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[200],
              color: progressColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently Progress',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Last 3 Days',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              '25h 12m',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Track your progress here',
                style: TextStyle(color: Colors.grey)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProgressBar(
                    day: 'Mon', progress: 0.3, progressText: '+6'),
                _buildProgressBar(
                    day: 'Tue', progress: 0.5, progressText: '+10'),
                _buildProgressBar(
                    day: 'Today', progress: 0.4, progressText: '+9'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressBar(
      {required String day,
      required double progress,
      required String progressText}) {
    return Column(
      children: [
        Text(progressText, style: TextStyle(color: Colors.grey)),
        SizedBox(height: 4),
        Container(
          width: 20,
          height: 100 * progress,
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(height: 4),
        Text(day, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildCourseSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Course',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'See More',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildCourseCard('https://www.cdmi.in/courses@2x/Web-design.webp',
                  'Web Design'),
              SizedBox(width: 16),
              _buildCourseCard(
                  'https://www.filepicker.io/api/file/weOnv3ocS0uZd45WSCrO',
                  'Flutter && Dart'),
              SizedBox(width: 16),
              _buildCourseCard(
                  'https://www.pcilearning.com/wp-content/uploads/2015/11/graphic_small_banner-3.jpg',
                  'Graphic Design'),
              SizedBox(width: 16),
              _buildCourseCard(
                  'https://computertrainingschoolnigeria.com.ng/wp-content/uploads/2021/08/Data-Analysis-Training-In-Abuja-Nigeria-1.jpg',
                  'Data Analytics')
            ],
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Product Design Expert Class',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.grey[200],
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 8),
            Icon(FontAwesomeIcons.play, color: Colors.blue),
          ],
        ),
      ],
    );
  }

  Widget _buildCourseCard(String imageUrl, String title) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(title),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
