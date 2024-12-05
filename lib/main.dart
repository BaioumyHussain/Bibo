import 'package:e_learning_app_gp/Screens/dashboard_screen.dart';
import 'package:e_learning_app_gp/Screens/progress_screen.dart';
import 'package:e_learning_app_gp/Screens/registration_screen.dart';
// import 'package:e_learning_app_gp/Screens/registration_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() {
  // ElevateEd
  runApp(ElevatedEdu());
}

class ElevatedEdu extends StatelessWidget {
  const ElevatedEdu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
