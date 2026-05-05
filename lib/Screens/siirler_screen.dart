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
              title: 'Duygusal',
              icon: 'assets/icons/depression.png',
              description: 'Duygusal Şiirlerini görüntülemek için tıklayın',
              color: Colors.indigo,
              onfunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SiirlerDetailScreen(category: 'Duygusal'),
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
