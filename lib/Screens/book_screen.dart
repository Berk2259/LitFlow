import 'package:flutter/material.dart';
import 'package:LitFlow/DetailScreen/detail_screen.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0),
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
                          'Kitaplar',
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
                          color: Colors.purple.shade300.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/books.png',
                            scale: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(endIndent: 16, indent: 16, thickness: 1),
              BookContainer(
                icon: 'assets/icons/private-detective.png',
                title: 'Polisiye',
                iconColor: Colors.indigo.shade400,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Polisiye',
                        themeColor: Colors.indigoAccent,
                        icon: 'assets/icons/private-detective.png',
                        blurColor: Colors.indigo.shade400,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/magic-lamp.png',
                title: 'Fantastik',
                iconColor: Colors.purple.shade300,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Fantastik',
                        themeColor: Colors.purple,
                        icon: 'assets/icons/magic-lamp.png',
                        blurColor: Colors.purple.shade300,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/alien.png',
                title: 'Bilim Kurgu',
                iconColor: Colors.lightBlueAccent.shade200,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Bilim Kurgu',
                        themeColor: Colors.lightBlueAccent,
                        icon: 'assets/icons/alien.png',
                        blurColor: Colors.lightBlueAccent.shade200,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/heart.png',
                title: 'Romantik',
                iconColor: Colors.red.shade300,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Romantik',
                        themeColor: Colors.red,
                        icon: 'assets/icons/heart.png',
                        blurColor: Colors.red.shade300,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/adventure.png',
                title: 'Macera',
                iconColor: Colors.amber.shade300,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Macera',
                        themeColor: Colors.amber,
                        icon: 'assets/icons/adventure.png',
                        blurColor: Colors.amber.shade300,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/philosopher.png',
                title: 'Felsefe',
                iconColor: Colors.green.shade300,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Felsefe',
                        themeColor: Colors.green,
                        icon: 'assets/icons/philosopher.png',
                        blurColor: Colors.green.shade300,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/pillar.png',
                title: 'Tarih',
                iconColor: Colors.pink.shade300,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Tarih',
                        themeColor: Colors.pink,
                        icon: 'assets/icons/pillar.png',
                        blurColor: Colors.pink.shade300,
                      ),
                    ),
                  );
                },
              ),
              BookContainer(
                icon: 'assets/icons/education.png',
                title: 'Eğitim',
                iconColor: Colors.deepPurpleAccent.shade200,
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailScreen(
                        category: 'Eğitim',
                        themeColor: Colors.deepPurpleAccent,
                        icon: 'assets/icons/education.png',
                        blurColor: Colors.deepPurpleAccent.shade200,
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: BookContainer(
                  icon: 'assets/icons/diet.png',
                  title: 'Yemek',
                  iconColor: Colors.orange.shade300,
                  onfunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetailScreen(
                          category: 'Yemek',
                          themeColor: Colors.orange,
                          icon: 'assets/icons/diet.png',
                          blurColor: Colors.orange.shade300,
                        ),
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
  final Color iconColor;
  const BookContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.onfunction,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: GestureDetector(
        onTap: onfunction,
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF1E1E1E),
            border: Border.all(color: Colors.white.withOpacity(0.07), width: 1),
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
                    color: iconColor.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 18),
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
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: iconColor,
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
