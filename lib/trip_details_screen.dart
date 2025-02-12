import 'package:flutter/material.dart';

class TripDetailsScreen extends StatelessWidget {
  const TripDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF0D0D2B), // Dark theme background color
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button and Profile Avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    radius: 20,
                    backgroundImage: const AssetImage('assets/profile.png'),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // SpaceX Dragon Header
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white12, // Semi-transparent background
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.rocket_launch, color: Colors.white, size: 50), // Replaced Image
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dragon",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Arrival Date: 12/08",
                          style: TextStyle(color: Colors.white54, fontSize: 10),
                        ),
                        const SizedBox(height: 9),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage('assets/profile1.png'),
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              "Douglas Hurley",
                              style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                            ),
                            const SizedBox(width: 6),
                            const Icon(Icons.star, color: Colors.amber, size: 14),
                            const Text(
                              " 4.9",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              "• 5,248 space travels",
                              style: TextStyle(color: Colors.white54, fontSize: 6),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 90),

              // Observations Text Box
              Container(
                width: screenWidth,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Any observations?",
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ),
              const SizedBox(height: 30),

              // Trip Details
              _tripDetailItem(Icons.location_on, "Mars Station IV", "Add or change"),
              _tripDetailItem(Icons.payment, "R\$ 107,50", "Change"),
              _tripDetailItem(Icons.group, "Are you traveling with someone else?", "Split value"),
              _tripDetailItem(Icons.share, "Share trip status", "Share"),

              const Spacer(),

              // Cancel & Safety Buttons (FIXED OVERFLOW)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: _actionButton("CANCEL TRIP", Colors.red)),
                  const SizedBox(width: 20), // Adds spacing
                  Flexible(child: _actionButton("SAFETY", Colors.blue)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Trip Detail Widget
  Widget _tripDetailItem(IconData icon, String title, String actionText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white54),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Text(
            actionText,
            style: const TextStyle(color: Colors.blueAccent, fontSize: 14),
          ),
        ],
      ),
    );
  }

  // Reusable Action Button (FIXED OVERFLOW)
  Widget _actionButton(String text, Color color) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
