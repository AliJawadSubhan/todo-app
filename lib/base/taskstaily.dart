import 'package:flutter/material.dart';
import 'package:taski/modules/dashboard/dashboard_page.dart';
import 'package:taski/modules/onboarding/onboarding_page.dart';

class TasksTaily extends StatelessWidget {
  const TasksTaily({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F8FA),
      ),
      home: const OnBoardingPage(),
    );
  }
}
