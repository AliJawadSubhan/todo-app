import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taski/configs/constants/color_constants.dart';
import 'package:taski/configs/extensions/buildcontext_extensions.dart';
import 'package:taski/core/core_widgets/widget_links.dart';
import 'package:taski/modules/dashboard/dashboard_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // A soft light grey

      // backgroundColor:
      // Colors.white, // Consider adding a background color or image
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customTextWidget(
            text: 'Hello There!', // Welcome title

            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          const SizedBox(height: 20), // Adds a bit of space between elements
          Center(
            child: SizedBox(
              height: context.screenHeight * 0.3,
              width: context.screenWidth * 0.7,
              child: SvgPicture.asset("assets/images/notebook.svg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: customTextWidget(
              text:
                  "Welcome to Tasky! Simplify your tasks, set reminders, and track progress easily. Start being more productive today!",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedContainerThreeD(
            height: 50,
            ontap: () {
              context.pushReplacementScreenTo(DashBoardPage());
            },
            containerColor: ColorConstants.primaryPastelBlue,
            shadowColor: const Color(0xFF000000).withOpacity(.7),
            width: 300,
            child: Center(
              child: customTextWidget(
                text: "Let's get started!",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
