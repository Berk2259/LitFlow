import 'package:flutter/material.dart';
import 'package:lirica/DetailScreen/sozler_detail_screen.dart';

class SozlerScreen extends StatelessWidget {
  const SozlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Column(
          children: [
            KategoriContainer(
              title: 'Aşk',
              description: 'Aşk sözlerini görüntülemek için tıklayın',
              icon: 'assets/icons/heart.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SozlerDetailScreen(category: 'Aşk'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Motivasyon',
              description: 'Motivasyon sözlerini görüntülemek içi tıklayın',
              icon: 'assets/icons/motivation.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Motivasyon'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Duygusal',
              description: 'Motivasyon sözlerini görüntülemek için tıklayın',
              icon: 'assets/icons/depression.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Duygusal'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Komik',
              description: 'Komik sözleri görüntülemek için tıklayın',
              icon: 'assets/icons/lol.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SozlerDetailScreen(category: 'Komik'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Felsefe',
              description: 'Felsefik sözleri görüntülemek için tıklayın',
              icon: 'assets/icons/philosophy.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Felsefe'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Dostluk',
              description: 'Dostluk sözlerini görüntülemek için tıklayın',
              icon: 'assets/icons/friend.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SozlerDetailScreen(category: 'Dostluk'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Film',
              description: 'Film sözlerini görüntülemek için tıklayın',
              icon: 'assets/icons/film.png',
              color: Colors.teal,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SozlerDetailScreen(category: 'Film'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class KategoriContainer extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onfunction;
  final String icon;
  final Color color;
  const KategoriContainer({
    super.key,
    required this.title,
    required this.onfunction,
    required this.icon,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onfunction,
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 12, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(description, style: TextStyle(color: Colors.white)),
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
