import 'package:flutter/material.dart';

class LiveTrackingPage extends StatelessWidget {
  const LiveTrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff8e44ad), Color(0xffd35400) // Deep Sky Blue
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: const Text(
                  'Journey details',
                  style: TextStyle(color: Colors.white),
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              // Live Tracking Section
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Live Tracking',
                      style: TextStyle(
                          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Reaching destination: 15 mins',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/progress_bar.png',
                      height: 90,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Journey Details Card
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Subtract.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white.withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ongoing',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        const Text('Ticket No: SJX9372', style: TextStyle(color: Colors.white, fontSize: 16)),
                        const SizedBox(height: 8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('From: Mars', style: TextStyle(color: Colors.white)),
                            Text('To: Earth 2.0', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        const SizedBox(height: 9),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Feb 9', style: TextStyle(color: Colors.white)),
                            Text('Mr. Sazid', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        const SizedBox(height: 8),
                        Image.asset(
                          'assets/barcode.png',
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Next Schedule Section
              const Text(
                'Schedule next',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _planetCard('assets/venus.png', 'Venus', '2.3 light yrs'),
                  _planetCard('assets/moon.png', 'Moon', '0.5 light yrs'),
                ],
              ),
              const SizedBox(height: 20),

              // Go Live Button
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Go Live',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _planetCard(String assetPath, String name, String distance) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              bottom: -10,
              child: Image.asset(
                assetPath,
                height: 90,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(color: Colors.white, fontSize: 16)),
        Text(distance, style: const TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}
