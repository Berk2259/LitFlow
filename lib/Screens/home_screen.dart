import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lirica/Screens/screens.dart';
import 'package:lirica/Screens/siirler_screen.dart';
import 'package:lirica/Screens/sozler_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.fire, size: 40, color: Colors.orange),
                  SizedBox(width: 10),
                  Text(
                    'Lirica',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Divider(),
              HomeContainer(
                title: 'Edebi Sözler',
                description: 'Edebi Sözleri görüntülemek için tıklayın',
                iconColor: Colors.teal,
                icon: 'assets/icons/feather.png',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SozlerScreen()),
                  );
                },
              ),
              HomeContainer(
                title: 'Şiirler',
                description: 'Şiirleri görüntülemek için tıklayın',
                iconColor: Colors.indigo,
                icon: 'assets/icons/poem.png',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiirlerScreen()),
                  );
                },
              ),
              HomeContainer(
                title: 'Şairler ve Yazarlar',
                description: 'Şairleri ve Yazarları görüntülemek için tıklayın',
                iconColor: Colors.redAccent,
                icon: 'assets/icons/person.png',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SairlerYazarlarScreen(),
                    ),
                  );
                },
              ),
              HomeContainer(
                title: 'Hikayeler',
                description: 'Hikayeleri görüntülemek için tıklayın',
                iconColor: Colors.brown,
                icon: 'assets/icons/story.png',
                onfunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HikayelerScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color iconColor;
  final String icon;
  final VoidCallback onfunction;
  const HomeContainer({
    super.key,
    required this.title,
    required this.description,
    required this.iconColor,
    required this.icon,
    required this.onfunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
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
                    color: iconColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 12, color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 22, color: iconColor),
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
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
