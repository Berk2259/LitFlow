import 'package:flutter/material.dart';
import 'package:LitFlow/DetailScreen/detail_screen.dart';

class SairlerYazarlarScreen extends StatefulWidget {
  const SairlerYazarlarScreen({super.key});

  @override
  State<SairlerYazarlarScreen> createState() => _SairlerYazarlarScreenState();
}

class _SairlerYazarlarScreenState extends State<SairlerYazarlarScreen> {
  String searchQuery = '';
  @override
  Widget build(BuildContext context) {
    final turkYazarlari = [
      if (searchQuery.isEmpty ||
          'Nazım Hikmet'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Nazım Hikmet',
          color: Colors.blue.shade300,
          name: 'NH',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Nazım Hikmet'),
        ),
      if (searchQuery.isEmpty ||
          'Orhan Pamuk'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Orhan Pamuk',
          color: Colors.red.shade300,
          name: 'OP',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Orhan Pamuk'),
        ),
      if (searchQuery.isEmpty ||
          'Yaşar Kemal'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Yaşar Kemal',
          color: Colors.green.shade300,
          name: 'YK',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Yaşar Kemal'),
        ),
      if (searchQuery.isEmpty ||
          'Ahmet Hamdi Tanpınar'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Ahmet Hamdi Tanpınar',
          color: Colors.amber.shade300,
          name: 'AT',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Ahmet Hamdi Tanpınar'),
        ),
      if (searchQuery.isEmpty ||
          'Cemal Süreya'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Cemal Süreya',
          color: Colors.purple.shade300,
          name: 'CP',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Cemal Süreya'),
        ),
      if (searchQuery.isEmpty ||
          'Orhan Veli Kanık'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Orhan Veli Kanık',
          color: Colors.brown.shade300,
          name: 'OK',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Orhan Veli Kanık'),
        ),
      if (searchQuery.isEmpty ||
          'Sabahattin Ali'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Sabahattin Ali',
          color: Colors.pink.shade300,
          name: 'SA',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Sabahattin Ali'),
        ),
      if (searchQuery.isEmpty ||
          'Halit Ziya Uşaklıgil'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Halit Ziya Uşaklıgil',
          color: Colors.deepOrange.shade300,
          name: 'HU',
          kategori: 'Türk',
          screen: PoetDetailScreen(name: 'Halit Ziya Uşaklıgil'),
        ),
    ];

    final dunyaYazarlari = [
      if (searchQuery.isEmpty ||
          'William Shakespeare'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'William Shakespeare',
          color: Colors.blue.shade300,
          name: 'WP',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'William Shakespeare'),
        ),
      if (searchQuery.isEmpty ||
          'Fyodor Dostoyevski'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Fyodor Dostoyevski',
          color: Colors.deepOrange.shade300,
          name: 'FD',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'Fyodor Dostoyevski'),
        ),
      if (searchQuery.isEmpty ||
          'Lev Tolstoy'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Lev Tolstoy',
          color: Colors.red.shade300,
          name: 'LT',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'Lev Tolstoy'),
        ),
      if (searchQuery.isEmpty ||
          'Franz Kafka'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Franz Kafka',
          color: Colors.purple.shade300,
          name: 'FK',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'Franz Kafka'),
        ),
      if (searchQuery.isEmpty ||
          'Victor Hugo'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Victor Hugo',
          color: Colors.amber.shade300,
          name: 'VH',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'Victor Hugo'),
        ),
      if (searchQuery.isEmpty ||
          'George Orwell'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'George Orwell',
          color: Colors.brown.shade300,
          name: 'GO',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'George Orwell'),
        ),
      if (searchQuery.isEmpty ||
          'Ernest Hemingway'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Ernest Hemingway',
          color: Colors.green.shade300,
          name: 'EH',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'Ernest Hemingway'),
        ),
      if (searchQuery.isEmpty ||
          'Gabriel García Márquez'.toLowerCase().contains(searchQuery))
        SairlerYazarlarContainer(
          title: 'Gabriel García Márquez',
          color: Colors.pink.shade300,
          name: 'GM',
          kategori: 'Dünya',
          screen: PoetDetailScreen(name: 'Gabriel García Márquez'),
        ),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                          'Şairler ve Yazarlar',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          '${turkYazarlari.length} Türk ve ${dunyaYazarlari.length} Dünya Yazarı',
                          style: TextStyle(
                            fontSize: 14,
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
                          color: Colors.green.shade300.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/poet.png',
                            scale: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(endIndent: 8, indent: 8, thickness: 1),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: TextField(
                    onChanged: (query) {
                      setState(() {
                        searchQuery = query.toLowerCase();
                      });
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Ara...',
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade800,
                      ),
                      filled: true,
                      fillColor: Color(0xFF2A2A2A),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
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
                          screen: PoetDetailScreen(name: 'Nazım Hikmet'),
                        ),
                        FavoriContainer(
                          name: 'OP',
                          color: Colors.red.shade300,
                          shadowColor: Colors.red.shade400,
                          screen: PoetDetailScreen(name: 'Orhan Pamuk'),
                        ),
                        FavoriContainer(
                          name: 'FK',
                          color: Colors.purple.shade300,
                          shadowColor: Colors.purple.shade400,
                          screen: PoetDetailScreen(name: 'Franz Kafka'),
                        ),
                        FavoriContainer(
                          name: 'EH',
                          color: Colors.green.shade300,
                          shadowColor: Colors.green.shade400,
                          screen: PoetDetailScreen(name: 'Ernest Hemingway'),
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
                        style: TextStyle(
                          color: Colors.blue.shade300,
                          fontSize: 30,
                        ),
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
  final Widget screen;
  const FavoriContainer({
    super.key,
    required this.name,
    required this.color,
    required this.shadowColor,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            boxShadow: [
              BoxShadow(color: shadowColor, blurRadius: 6, spreadRadius: 2),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(name),
          ),
        ),
      ),
    );
  }
}

class SairlerYazarlarContainer extends StatelessWidget {
  final String title;
  final Color color;
  final String name;
  final String kategori;
  final Widget screen;
  const SairlerYazarlarContainer({
    super.key,
    required this.title,
    required this.color,
    required this.name,
    required this.kategori,
    required this.screen,
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
              color: color.withOpacity(0.5),
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
                color: Color(0xFF1E1E1E),
                border: Border.all(
                  color: Colors.white.withOpacity(0.07),
                  width: 1,
                ),
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
                        color: color.withOpacity(0.5),
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
                              color: color.withOpacity(0.25),
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
                                style: TextStyle(color: color),
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
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => screen),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: color,
                      ),
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
