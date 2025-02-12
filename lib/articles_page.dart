import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Books ',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              'Articles',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // Trending Section
          const Text(
            "Trending",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150, // Height for trending images
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                trendingCard('assets/trending1.png'),
                trendingCard('assets/trending2.png'),
                trendingCard('assets/trending3.png'),
                trendingCard('assets/trending4.png'),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Articles Section
          articleCard('assets/image1.png', 'US Space Force reveals 1st look at secretive X-37B space plane in orbit', 'by Brett Tingley'),
          articleCard('assets/image2.png', 'Where will the Blood Moon total lunar eclipse be visible in March 2025?', 'by Adam Sher'),
          articleCard('assets/image3.png', 'Night sky for tonight: Visible planets, stars and more in this evening sky', 'By Jamie Carter'),
          articleCard('assets/image8.png', 'Best telescopes 2025: Bring the universe closer with the best telescopes for stars, planets, nebulas and more', 'by Adam Sher'),
          articleCard('assets/image5.png', 'Solar system planets, order and formation: The ultimate guide', 'Adam Sher'),
          articleCard('assets/image6.png', 'Rocket launch today: Is there a rocket launch and what time?', 'Adam Sher'),
          articleCard('assets/image8.png', 'Best telescopes 2025: Bring the universe closer with the best telescopes for stars, planets, nebulas and more', 'by Adam Sher'),
          articleCard('assets/image5.png', 'Solar system planets, order and formation: The ultimate guide', 'Adam Sher'),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.music_note, color: Colors.white), onPressed: () {}),
            const SizedBox(width: 50),
            IconButton(icon: const Icon(Icons.settings, color: Colors.white), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget trendingCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget articleCard(String imagePath, String title, String author) {
    return Card(
      color: Colors.black,
      elevation: 0,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 70,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  author,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
