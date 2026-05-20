import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BookContainer(
                icon: 'assets/icons/detective.png',
                title: 'Polisiye',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BookContainer(
                icon: 'assets/icons/fantastic.png',
                title: 'Fantastik',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BookContainer(
                icon: 'assets/icons/sci-fic.png',
                title: 'Bilim Kurgu',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BookContainer(
                icon: 'assets/icons/heart.png',
                title: 'Romantik',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  final String title;
  final String icon;
  const BookContainer({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(icon, scale: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Kitapları görüntülemek için tıklayın',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
