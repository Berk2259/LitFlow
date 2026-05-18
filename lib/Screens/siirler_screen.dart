import 'package:flutter/material.dart';
import 'package:lirica/DetailScreen/detail_screen.dart';
import 'package:lirica/Screens/screens.dart';

class SiirlerScreen extends StatelessWidget {
  const SiirlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Column(
          children: [
            KategoriContainer(
              title: 'Aşk',
              icon: 'assets/icons/heart.png',
              description: 'Aşk Şiirlerini görüntülemek için tıklayın',
              color: Colors.indigo,
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
              color: Colors.indigo,
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
              color: Colors.indigo,
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
              color: Colors.indigo,
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
              color: Colors.indigo,
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
              color: Colors.indigo,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SiirlerDetailScreen(category: 'Doğa'),
                  ),
                );
              },
            ),
            KategoriContainer(
              title: 'Umut',
              icon: 'assets/icons/hope.png',
              description: 'Umut Şiirlerini görüntülemek için tıklayın',
              color: Colors.indigo,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SiirlerDetailScreen(category: 'Umut'),
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
