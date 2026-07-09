import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lirica/Screens/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
              bottom: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.fire,
                      size: 40,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'LitFlow',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Divider(),
                /*  Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                  child: Text(
                    'Edebiyat, şiir ve daha fazlası',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
 */
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 10.0,
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                  child: Text(
                    'Öne Çıkanlar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularContainer(
                        title: 'Sözler',
                        description: 'Özlü Sözler',
                        icon: 'assets/icons/soz.png',
                        iconColor: Colors.red.shade300,
                        screen: SozlerScreen(),
                      ),
                      PopularContainer(
                        title: 'Şiirler',
                        description: 'Şiir Arşivi',
                        icon: 'assets/icons/poetry.png',
                        iconColor: Colors.amber.shade300,
                        screen: SiirlerScreen(),
                      ),
                      PopularContainer(
                        title: 'Kitaplar',
                        description: 'Kitap Listesi',
                        icon: 'assets/icons/bookshelf.png',
                        iconColor: Colors.purple.shade300,
                        screen: BookScreen(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                  child: Text(
                    'Kategoriler',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (searchQuery.isEmpty || 'sözler'.contains(searchQuery))
                  HomeContainer(
                    title: 'Sözler',
                    description: 'Sözleri görüntülemek için tıklayın',
                    iconColor: Colors.red.shade300,
                    icon: 'assets/icons/soz.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SozlerScreen()),
                      );
                    },
                  ),
                if (searchQuery.isEmpty || 'şiirler'.contains(searchQuery))
                  HomeContainer(
                    title: 'Şiirler',
                    description: 'Şiirleri görüntülemek için tıklayın',
                    iconColor: Colors.amber.shade300,
                    icon: 'assets/icons/poetry.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SiirlerScreen(),
                        ),
                      );
                    },
                  ),
                if (searchQuery.isEmpty ||
                    'şairler'.contains(searchQuery) ||
                    'yazarlar'.contains(searchQuery))
                  HomeContainer(
                    title: 'Şairler ve Yazarlar',
                    description:
                        'Şairleri ve Yazarları görüntülemek için tıklayın',
                    iconColor: Colors.green.shade300,
                    icon: 'assets/icons/poet.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SairlerYazarlarScreen(),
                        ),
                      );
                    },
                  ),
                if (searchQuery.isEmpty || 'hikayeler'.contains(searchQuery))
                  HomeContainer(
                    title: 'Hikayeler',
                    description: 'Hikayeleri görüntülemek için tıklayın',
                    iconColor: Colors.blue.shade300,
                    icon: 'assets/icons/story.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HikayelerScreen(),
                        ),
                      );
                    },
                  ),
                if (searchQuery.isEmpty || 'kitaplar'.contains(searchQuery))
                  HomeContainer(
                    title: 'Kitaplar',
                    description: 'Hikayeleri görüntülemek için tıklayın',
                    iconColor: Colors.purple.shade300,
                    icon: 'assets/icons/bookshelf.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookScreen()),
                      );
                    },
                  ),
                if (searchQuery.isEmpty ||
                    'deyimler'.contains(searchQuery) ||
                    'atasözleri'.contains(searchQuery))
                  HomeContainer(
                    title: 'Deyimler ve Atasözleri',
                    description:
                        'Deyimler ve Atasözlerini görüntülemek için tıklayın',
                    iconColor: Colors.pink.shade300,
                    icon: 'assets/icons/write.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProverbsScreen(),
                        ),
                      );
                    },
                  ),
                if (searchQuery.isEmpty || 'favoriler'.contains(searchQuery))
                  HomeContainer(
                    title: 'Favoriler',
                    description:
                        'Favoriye Alınanları görüntülemek için tıklayın',
                    iconColor: Colors.teal.shade300,
                    icon: 'assets/icons/heart.png',
                    onfunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreen(),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PopularContainer extends StatelessWidget {
  final String title;
  final String icon;
  final Color iconColor;
  final String description;
  final Widget screen;
  const PopularContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.description,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.15,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: iconColor.withOpacity(0.25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 18),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 2),
                Text(
                  description,
                  style: TextStyle(color: Colors.white38, fontSize: 12),
                ),
              ],
            ),
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
                    borderRadius: BorderRadius.circular(15),
                    color: iconColor.withOpacity(0.25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 18),
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
                          style: TextStyle(fontSize: 18, color: iconColor),
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_circle_right_outlined, color: iconColor),
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
