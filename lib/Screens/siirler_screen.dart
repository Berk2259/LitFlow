import 'package:flutter/material.dart';
import 'package:lirica/DetailScreen/detail_screen.dart';
import 'package:lirica/Screens/screens.dart';

class SiirlerScreen extends StatelessWidget {
  const SiirlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Şiirler',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Kategoriler',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber.shade300.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/icons/poetry.png',
                          scale: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(endIndent: 8, indent: 8, thickness: 1),
            KategoriContainer(
              title: 'Aşk',
              icon: 'assets/icons/heart.png',
              description: 'Aşk Şiirlerini görüntülemek için tıklayın',
              color: Colors.red.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SiirlerDetailScreen(category: 'Aşk'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Ayrılık',
              icon: 'assets/icons/broken.png',
              description: 'Ayrılık Şiirlerini görüntülemek için tıklayın',
              color: Colors.teal.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SiirlerDetailScreen(category: 'Ayrılık'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Özlem',
              icon: 'assets/icons/dove.png',
              description: 'Özlem Şiirlerini görüntülemek için tıklayın',
              color: Colors.pink.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SiirlerDetailScreen(category: 'Özlem'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Hüzün',
              icon: 'assets/icons/depression.png',
              description: 'Hüzün Şiirlerini görüntülemek için tıklayın',
              color: Colors.blue.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SiirlerDetailScreen(category: 'Hüzün'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Dostluk',
              icon: 'assets/icons/friend.png',
              description: 'Dostluk Şiirlerini görüntülemek için tıklayın',
              color: Colors.amber.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SiirlerDetailScreen(category: 'Dostluk'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Doğa',
              icon: 'assets/icons/nature.png',
              description: 'Doğa Şiirlerini görüntülemek için tıklayın',
              color: Colors.green.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SiirlerDetailScreen(category: 'Doğa'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Umut',
              icon: 'assets/icons/hope.png',
              description: 'Umut Şiirlerini görüntülemek için tıklayın',
              color: Colors.purple.shade300,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SiirlerDetailScreen(category: 'Umut'),
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
