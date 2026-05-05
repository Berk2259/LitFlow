import 'package:flutter/material.dart';

class SairlerYazarlarScreen extends StatelessWidget {
  const SairlerYazarlarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Türk Edebiyatı',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SairlerYazarlarContainer(title: 'Nazım Hikmet'),
                SairlerYazarlarContainer(title: 'Orhan Pamuk'),
                SairlerYazarlarContainer(title: 'Yaşar Kemal'),
                SairlerYazarlarContainer(title: 'Ahmet Hamdi Tanpınar'),
                SairlerYazarlarContainer(title: 'Cemal Süreya'),
                SairlerYazarlarContainer(title: 'Orhan Veli Kanık'),
                SairlerYazarlarContainer(title: 'Sabahattin Ali'),
                SairlerYazarlarContainer(title: 'Halit Ziya Uşaklıgil'),
                 Text(
                  'Dünya Edebiyatı',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SairlerYazarlarContainer(title: 'William Shakespeare'),
                SairlerYazarlarContainer(title: 'Fyodor Dostoevsky'),
                SairlerYazarlarContainer(title: 'Leo Tolstoy'),
                SairlerYazarlarContainer(title: 'Franz Kafka'),
                SairlerYazarlarContainer(title: 'Victor Hugo'),
                SairlerYazarlarContainer(title: 'George Orwell'),
                SairlerYazarlarContainer(title: 'Ernest Hemingway'),
                SairlerYazarlarContainer(title: 'Gabriel García Márquez'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SairlerYazarlarContainer extends StatelessWidget {
  final String title;
  const SairlerYazarlarContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0, top: 8.0),
      child: Container(
        width: double.infinity,
        height: 80,
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/person.png',
                    scale: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
