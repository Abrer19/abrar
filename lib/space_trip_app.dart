import 'package:flutter/material.dart';

class SpaceTravelScreen extends StatelessWidget {
  const SpaceTravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Space Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/starry_background.jpg', // Add this image to assets
              fit: BoxFit.cover,
            ),
          ),

          // Earth Image (Top Center)
          Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width * 0.35,
            child: Image.asset(
              'assets/mars.png', // Add this image to assets
              width: 80,
              height: 80,
            ),
          ),

          // Mars Image (Centered)
          Positioned(
            top: 200,
            left: MediaQuery.of(context).size.width * 0.2,
            child: Image.asset(
              'assets/moon3.png', // Add this image to assets
              width: 250,
              height: 250,
            ),
          ),

          // Spaceship traveling from Earth to Mars
          Positioned(
            top: 150,
            left: MediaQuery.of(context).size.width * 0.42,
            child: Image.asset(
              'assets/spaceship.png', // Add this image to assets
              width: 50,
              height: 50,
            ),
          ),

          // Arrival Time Text
          Positioned(
            top: 270,
            left: MediaQuery.of(context).size.width * 0.4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Arrival\n3 days',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),

          // User Profile Avatar (Top Right)
          Positioned(
            top: 40,
            right: 20,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                'assets/images/profile.jpg', // Add this image to assets
              ),
            ),
          ),

          // Chat Bubble for Advertisement
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Don't go hungry on your trip,\nbuy the space snacks",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),

          // Floating Call Button
          Positioned(
            bottom: 200,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(Icons.call, color: Colors.white),
            ),
          ),

          // Bottom Card (Astronaut Profile)
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // Astronaut Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/profile1.png', // Add this image to assets
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Astronaut Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dragon",
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Arrival Date: 12/08",
                          style: TextStyle(color: Colors.white54, fontSize: 14),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Text(
                              "Douglas Hurley",
                              style: TextStyle(color: Colors.blue, fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.star, color: Colors.yellow, size: 16),
                            Text(
                              " 4.9 • 5.248 space travel",
                              style: TextStyle(color: Colors.white54, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Observation Input Field
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Any observations?",
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
