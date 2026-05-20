import 'package:flutter/material.dart';
import 'package:lirica/DetailScreen/detail_screen.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookContainer(
                icon: 'assets/icons/detective.png',
                title: 'Polisiye',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Polisiye'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/fantastic.png',
                title: 'Fantastik',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Fantastik'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/sci-fic.png',
                title: 'Bilim Kurgu',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Bilim Kurgu'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/heart.png',
                title: 'Romantik',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Romantik'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/adventure.png',
                title: 'Macera',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Macera'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/philosopher.png',
                title: 'Felsefe',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Felsefe'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/pillar.png',
                title: 'Tarih',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(category: 'Tarih'),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/education.png',
                title: 'Eğitim',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BookDetailScreen(category: 'Eğitim'),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: BookContainer(
                  icon: 'assets/icons/food.png',
                  title: 'Yemek',
                  onfunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BookDetailScreen(category: 'Yemek'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onfunction;
  const BookContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.onfunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
      child: GestureDetector(
        onTap: onfunction,
        child: Container(
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
        ),
      ),
    );
  }
}
