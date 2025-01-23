import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/sleep.controller.dart';

class SleepScreen extends GetView<SleepController> {
  const SleepScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:           SizedBox(
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0D1E50), // Dark Blue
                Color(0xFF1B264F), // Slightly Lighter Blue
              ],
            ),
          ),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 60), // Top Padding

                // Title
                const Text(
                  "Good night2",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                // Alarm Text
                const SizedBox(height: 8),
                const Text(
                  "Alarm 07:15 AM",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),

                // Clock and Moon Design
                const Spacer(),
                SizedBox(
                  height: 300,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Moon and Clouds Background
                      Positioned(
                        top: 50,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                      ),

                      Positioned(
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // Time Text
                      const Text(
                        "22:30",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D1E50),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // Sleep Duration
                Column(
                  children: const [
                    Text(
                      "Sleep duration",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "00:12",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                // Stop Tracking Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      "Stop tracking",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D1E50),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40), // Bottom Padding
              ],
            ),
          ),

        ),
      ),

    );
  }
}
