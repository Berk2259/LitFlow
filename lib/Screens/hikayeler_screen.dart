import 'package:flutter/material.dart';
import 'package:lirica/DetailScreen/story_detail_screen.dart';

class HikayelerScreen extends StatefulWidget {
  const HikayelerScreen({super.key});

  @override
  State<HikayelerScreen> createState() => _HikayelerScreenState();
}

String searchQuery = '';

class _HikayelerScreenState extends State<HikayelerScreen> {
  @override
  Widget build(BuildContext context) {
    final turkHikayeler = [
      if (searchQuery.isEmpty ||
          'Keleoğlan ve Nasreddin Hoca'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Keleoğlan ve Nasreddin Hoca',
          description: 'Masal - Türk',
          shortDescription: 'KH',
          category: 'Masal',
          color: Colors.blue,
          time: '6 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Dede Korkut Hikayeleri'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Dede Korkut Hikayeleri',
          description: 'Destan - Türk',
          shortDescription: 'DK',
          category: 'Destan',
          color: Colors.green,
          time: '18 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Karagöz ile Hacivat'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Karagöz ile Hacivat',
          description: 'Geleneksel - Türk',
          shortDescription: 'KH',
          category: 'Geleneksel',
          color: Colors.amber,
          time: '5 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Fındık Kabuğunun Evi'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Fındık Kabuğunun Evi',
          description: 'Masal - Türk',
          shortDescription: 'FK',
          category: 'Masal',
          color: Colors.redAccent,
          time: '7 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Çıldırmış Pendik'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Çıldırmış Pendik',
          description: 'Öykü - Türk',
          shortDescription: 'ÇP',
          category: 'Öykü',
          color: Colors.purpleAccent,
          time: '10 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Zeyno ile Babası'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Zeyno ile Babası',
          description: 'Roman - Türk',
          shortDescription: 'ZB',
          category: 'Roman',
          color: Colors.lightBlue,
          time: '25 dk',
          screen: StoryDetailScreen(),
        ),
    ];
    final dunyaHikayeleri = [
      if (searchQuery.isEmpty ||
          'Kırmızı Başlıklı Kız'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Kırmızı Başlıklı Kız',
          description: 'Masal - Dünya',
          shortDescription: 'KB',
          category: 'Masal',
          color: Colors.pink,
          time: '8 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty || 'Pinakyo'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Pinakyo',
          description: 'Masal - İtalya',
          shortDescription: 'P',
          category: 'Masal',
          color: Colors.orange,
          time: '12 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Küçük Prens'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Küçük Prens',
          description: 'Öykü - Fransa',
          shortDescription: 'KP',
          category: 'Öykü',
          color: Colors.blue.shade300,
          time: '15 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Alice Harikalar Diyarında'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Alice Harikalar Diyarında',
          description: 'Fantastik - İngiltere',
          shortDescription: 'AH',
          category: 'Fantastik',
          color: Colors.purpleAccent.shade200,
          time: '22 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Uyuyan Güzel'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Uyuyan Güzel',
          description: 'Masal - Dünya',
          shortDescription: 'UG',
          category: 'Masal',
          color: Colors.amber.shade300,
          time: '9 dk',
          screen: StoryDetailScreen(),
        ),
      if (searchQuery.isEmpty ||
          'Moby Dick'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Moby Dick',
          description: 'Roman - Amerika',
          shortDescription: 'MD',
          category: 'Roman',
          color: Colors.teal.shade300,
          time: '45 dk',
          screen: StoryDetailScreen(),
        ),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
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

                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade800),
                    filled: true,
                    fillColor: Color(0xFF2A2A2A),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Öne Çıkanlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HikayeFavContainer(
                        title: 'Keloğlan',
                        description: 'Türk Masalları',
                        short: 'K',
                        color: Colors.blue,
                        shadow: Colors.blue.shade300,
                        time: '8 dk',
                      ),
                      SizedBox(width: 16),
                      HikayeFavContainer(
                        title: 'Pinokyo',
                        description: 'İtalyan Masalları',
                        short: 'P',
                        color: Colors.red,
                        shadow: Colors.red.shade300,
                        time: '12 dk',
                      ),
                      SizedBox(width: 16),
                      HikayeFavContainer(
                        title: 'Dede Korkut',
                        description: 'Türk Masalları',
                        short: 'D',
                        color: Colors.green,
                        shadow: Colors.green.shade300,
                        time: '15 dk',
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Kategoriler',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                CategoryContainer(
                  icon: 'assets/icons/fairytale.png',
                  title: 'Masal',
                  description: 'Masalları Keşfet',
                  color: Colors.blue.shade300,
                ),
                CategoryContainer(
                  icon: 'assets/icons/novel.png',
                  title: 'Destan',
                  description: 'Destanları Oku',
                  color: Colors.green.shade300,
                ),
                CategoryContainer(
                  icon: 'assets/icons/adventure.png',
                  title: 'Macera',
                  description: 'Macera Hikayeleri',
                  color: Colors.amber.shade300,
                ),
                CategoryContainer(
                  icon: 'assets/icons/fantastic.png',
                  title: 'Fantastik',
                  description: 'Hayal Gücüne Yolculuk',
                  color: Colors.purple.shade300,
                ),
                CategoryContainer(
                  icon: 'assets/icons/boy.png',
                  title: 'Çocuk',
                  description: 'Çocuklara Özel Hikayeler',
                  color: Colors.red.shade300,
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TÜRK EDEBİYATI',
                          style: TextStyle(
                            color: Colors.green.shade300,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Türk Hikayeleri',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      turkHikayeler.length.toString(),
                      style: TextStyle(
                        color: Colors.green.shade300,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                ...turkHikayeler,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DÜNYA EDEBİYATI',
                          style: TextStyle(
                            color: Colors.blue.shade300,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Türk Hikayeleri',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      dunyaHikayeleri.length.toString(),
                      style: TextStyle(
                        color: Colors.blue.shade300,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                ...dunyaHikayeleri,
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HikayeContainer extends StatelessWidget {
  final String title;
  final String shortDescription;
  final String description;
  final String category;
  final Color color;
  final String time;
  final Widget screen;
  const HikayeContainer({
    super.key,
    required this.title,
    required this.description,
    required this.shortDescription,
    required this.category,
    required this.color,
    required this.time,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          margin: EdgeInsets.all(4),
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Color(0xFF2A2A2A),
            border: Border(left: BorderSide(color: color, width: 5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      shortDescription,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        description,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                top: 1,
                                bottom: 1,
                              ),
                              child: Text(
                                category,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 16, color: color),
                              SizedBox(width: 8),
                              Text(time, style: TextStyle(color: color)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen),
                      );
                    },
                    icon: Icon(Icons.arrow_circle_right_outlined, color: color),
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

class CategoryContainer extends StatelessWidget {
  final String icon;
  final Color color;
  final String title;
  final String description;
  const CategoryContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF2A2A2A),
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
                  color: color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(icon, scale: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      description,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(Icons.arrow_circle_right_outlined, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HikayeFavContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String short;
  final Color shadow;
  final String time;
  const HikayeFavContainer({
    super.key,
    required this.title,
    required this.description,
    required this.color,
    required this.short,
    required this.shadow,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF2A2A2A),
          boxShadow: [
            BoxShadow(color: shadow, blurRadius: 4, offset: Offset(4, 0)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                  boxShadow: [BoxShadow(color: shadow, blurRadius: 4)],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(short, style: TextStyle(color: Colors.white)),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                description,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Row(
                children: [
                  Icon(Icons.access_time, size: 15, color: color),
                  SizedBox(width: 5),
                  Text(time, style: TextStyle(color: color)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
