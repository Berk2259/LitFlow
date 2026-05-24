import 'package:flutter/material.dart';

class SairlerYazarlarScreen extends StatelessWidget {
  const SairlerYazarlarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final turkYazarlari = [
      SairlerYazarlarContainer(
        title: 'Nazım Hikmet',
        color: Colors.blue.shade300,
        name: 'NH',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Orhan Pamuk',
        color: Colors.red.shade300,
        name: 'OP',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Yaşar Kemal',
        color: Colors.green.shade300,
        name: 'YK',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Ahmet Hamdi Tanpınar',
        color: Colors.amber.shade300,
        name: 'AT',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Cemal Süreya',
        color: Colors.purple.shade300,
        name: 'CP',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Orhan Veli Kanık',
        color: Colors.brown.shade300,
        name: 'OK',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Sabahattin Ali',
        color: Colors.pink.shade300,
        name: 'SA',
        kategori: 'Türk',
      ),
      SairlerYazarlarContainer(
        title: 'Halit Ziya Uşaklıgil',
        color: Colors.deepOrange.shade300,
        name: 'HU',
        kategori: 'Türk',
      ),
    ];

    final dunyaYazarlari = [
      SairlerYazarlarContainer(
        title: 'William Shakespeare',
        color: Colors.blue.shade300,
        name: 'WP',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'Fyodor Dostoevsky',
        color: Colors.deepOrange.shade300,
        name: 'FD',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'Leo Tolstoy',
        color: Colors.red.shade300,
        name: 'LT',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'Franz Kafka',
        color: Colors.purple.shade300,
        name: 'FK',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'Victor Hugo',
        color: Colors.amber.shade300,
        name: 'VH',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'George Orwell',
        color: Colors.brown.shade300,
        name: 'GO',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'Ernest Hemingway',
        color: Colors.green.shade300,
        name: 'EH',
        kategori: 'Dünya',
      ),
      SairlerYazarlarContainer(
        title: 'Gabriel García Márquez',
        color: Colors.pink.shade300,
        name: 'GM',
        kategori: 'Dünya',
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Öne Çıkanlar',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        FavoriContainer(
                          name: 'NH',
                          color: Colors.blue.shade300,
                          shadowColor: Colors.blue.shade400,
                        ),
                        FavoriContainer(
                          name: 'OP',
                          color: Colors.red.shade300,
                          shadowColor: Colors.red.shade400,
                        ),
                        FavoriContainer(
                          name: 'WP',
                          color: Colors.blue.shade300,
                          shadowColor: Colors.blue.shade400,
                        ),
                        FavoriContainer(
                          name: 'NH',
                          color: Colors.red.shade300,
                          shadowColor: Colors.red.shade400,
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TÜRK EDEBİYATI',
                          style: TextStyle(
                            color: Colors.green.shade300,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Türk Yazarları',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Text(
                        turkYazarlari.length.toString(),
                        style: TextStyle(color: Colors.green, fontSize: 30),
                      ),
                    ),
                  ],
                ),
                ...turkYazarlari,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DÜNYA EDEBİYATI',
                          style: TextStyle(
                            color: Colors.blue.shade300,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Dünya Yazarları',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Text(
                        dunyaYazarlari.length.toString(),
                        style: TextStyle(color: Colors.indigo, fontSize: 30),
                      ),
                    ),
                  ],
                ),
                ...dunyaYazarlari,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriContainer extends StatelessWidget {
  final String name;
  final Color color;
  final Color shadowColor;
  const FavoriContainer({
    super.key,
    required this.name,
    required this.color,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(color: shadowColor, blurRadius: 6, spreadRadius: 2),
          ],
        ),
        child: Padding(padding: const EdgeInsets.all(16.0), child: Text(name)),
      ),
    );
  }
}

class SairlerYazarlarContainer extends StatelessWidget {
  final String title;
  final Color color;
  final String name;
  final String kategori;

  const SairlerYazarlarContainer({
    super.key,
    required this.title,
    required this.color,
    required this.name,
    required this.kategori,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0, top: 8.0),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color(0xFF2A2A2A),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(name),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 2,
                                bottom: 2,
                                left: 8,
                                right: 8,
                              ),
                              child: Text(
                                kategori,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Profili Gör',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
