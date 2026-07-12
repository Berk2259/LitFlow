import 'package:flutter/material.dart';
import 'package:LitFlow/Data/story.dart';
import 'package:LitFlow/DetailScreen/story_detail_screen.dart';

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
          time: '5 dk',
          screen: StoryDetailScreen(name: 'Keleoğlan ve Nasreddin Hoca'),
        ),
      if (searchQuery.isEmpty ||
          'Dede Korkut Hikayeleri'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Dede Korkut Hikayeleri',
          description: 'Destan - Türk',
          shortDescription: 'DK',
          category: 'Destan',
          color: Colors.green,
          time: '8 dk',
          screen: StoryDetailScreen(name: 'Dede Korkut Hikayeleri'),
        ),
      if (searchQuery.isEmpty ||
          'Karagöz ve Hacivat'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Karagöz ve Hacivat',
          description: 'Geleneksel - Türk',
          shortDescription: 'KH',
          category: 'Geleneksel',
          color: Colors.amber,
          time: '5 dk',
          screen: StoryDetailScreen(name: 'Karagöz ve Hacivat'),
        ),
      if (searchQuery.isEmpty ||
          'Fındık Kabuğunun Evi'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Fındık Kabuğunun Evi',
          description: 'Masal - Türk',
          shortDescription: 'FK',
          category: 'Masal',
          color: Colors.redAccent,
          time: '4 dk',
          screen: StoryDetailScreen(name: 'Fındık Kabuğunun Evi'),
        ),
      if (searchQuery.isEmpty ||
          'Çıldırmış Pendik'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Çıldırmış Pendik',
          description: 'Öykü - Türk',
          shortDescription: 'ÇP',
          category: 'Öykü',
          color: Colors.purpleAccent,
          time: '5 dk',
          screen: StoryDetailScreen(name: 'Çıldırmış Pendik'),
        ),
      if (searchQuery.isEmpty ||
          'Zeyno ile Babası'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Zeyno ile Babası',
          description: 'Roman - Türk',
          shortDescription: 'ZB',
          category: 'Roman',
          color: Colors.lightBlue,
          time: '6 dk',
          screen: StoryDetailScreen(name: 'Zeyno ile Babası'),
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
          time: '5 dk',
          screen: StoryDetailScreen(name: 'Kırmızı Başlıklı Kız'),
        ),
      if (searchQuery.isEmpty || 'Pinokyo'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Pinokyo',
          description: 'Masal - İtalya',
          shortDescription: 'PK',
          category: 'Masal',
          color: Colors.orange,
          time: '7 dk',
          screen: StoryDetailScreen(name: 'Pinokyo'),
        ),
      if (searchQuery.isEmpty ||
          'Küçük Prens'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Küçük Prens',
          description: 'Öykü - Fransa',
          shortDescription: 'KP',
          category: 'Öykü',
          color: Colors.blue.shade300,
          time: '8 dk',
          screen: StoryDetailScreen(name: 'Küçük Prens'),
        ),
      if (searchQuery.isEmpty ||
          'Alice Harikalar Diyarında'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Alice Harikalar Diyarında',
          description: 'Fantastik - İngiltere',
          shortDescription: 'AH',
          category: 'Fantastik',
          color: Colors.purpleAccent.shade200,
          time: '7 dk',
          screen: StoryDetailScreen(name: 'Alice Harikalar Diyarında'),
        ),
      if (searchQuery.isEmpty ||
          'Uyuyan Güzel'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Uyuyan Güzel',
          description: 'Masal - Dünya',
          shortDescription: 'UG',
          category: 'Masal',
          color: Colors.amber.shade300,
          time: '5 dk',
          screen: StoryDetailScreen(name: 'Uyuyan Güzel'),
        ),
      if (searchQuery.isEmpty ||
          'Moby Dick'.toLowerCase().contains(searchQuery))
        HikayeContainer(
          title: 'Moby Dick',
          description: 'Roman - Amerika',
          shortDescription: 'MD',
          category: 'Roman',
          color: Colors.teal.shade300,
          time: '10 dk',
          screen: StoryDetailScreen(name: 'Moby Dick'),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
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
                            'Hikayeler',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Hikayelerle ilgili bilgiler',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/reading-book.png',
                              scale: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(endIndent: 8, indent: 8, thickness: 1),
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
                        title: 'Keloğlan ve Nasreddin Hoca',
                        description: 'Türk Masalları',
                        short: 'KH',
                        color: Colors.blue,
                        shadow: Colors.blue.shade300,
                        time: '8 dk',
                        screen: StoryDetailScreen(
                          name: 'Keloğlan ve Nasreddin Hoca',
                        ),
                      ),
                      SizedBox(width: 16),
                      HikayeFavContainer(
                        title: 'Pinokyo',
                        description: 'İtalyan Masalları',
                        short: 'P',
                        color: Colors.red,
                        shadow: Colors.red.shade300,
                        time: '12 dk',
                        screen: StoryDetailScreen(name: 'Pinokyo'),
                      ),
                      SizedBox(width: 16),
                      HikayeFavContainer(
                        title: 'Dede Korkut',
                        description: 'Türk Masalları',
                        short: 'D',
                        color: Colors.green,
                        shadow: Colors.green.shade300,
                        time: '15 dk',
                        screen: StoryDetailScreen(name: 'Dede Korkut'),
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
                  screen: StoryCategoryScreen(category: 'Masal'),
                ),
                CategoryContainer(
                  icon: 'assets/icons/novel.png',
                  title: 'Destan',
                  description: 'Destanları Oku',
                  color: Colors.green.shade300,
                  screen: StoryCategoryScreen(category: 'Destan'),
                ),
                CategoryContainer(
                  icon: 'assets/icons/adventure.png',
                  title: 'Macera',
                  description: 'Macera Hikayeleri',
                  color: Colors.amber.shade300,
                  screen: StoryCategoryScreen(category: 'Macera'),
                ),
                CategoryContainer(
                  icon: 'assets/icons/magic-lamp.png',
                  title: 'Fantastik',
                  description: 'Hayal Gücüne Yolculuk',
                  color: Colors.purple.shade300,
                  screen: StoryCategoryScreen(category: 'Fantastik'),
                ),
                CategoryContainer(
                  icon: 'assets/icons/boy.png',
                  title: 'Çocuk',
                  description: 'Çocuklara Özel Hikayeler',
                  color: Colors.red.shade300,
                  screen: StoryCategoryScreen(category: 'Çocuk'),
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
    return ClipRRect(
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
          color: Color(0xFF1E1E1E),
          border: Border(
            left: BorderSide(color: color.withOpacity(0.5), width: 5),
          ),
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
                  color: color.withOpacity(0.5),
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
                            color: color.withOpacity(0.25),
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
                              style: TextStyle(color: color),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
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
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final String icon;
  final Color color;
  final String title;
  final String description;
  final Widget screen;
  const CategoryContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    required this.screen,
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
                  color: color.withOpacity(0.25),
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => screen),
                    );
                  },
                  child: Icon(Icons.arrow_circle_right_outlined, color: color),
                ),
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
  final Widget screen;
  const HikayeFavContainer({
    super.key,
    required this.title,
    required this.description,
    required this.color,
    required this.short,
    required this.shadow,
    required this.time,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.4,
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
            padding: EdgeInsets.only(left: 16),
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
      ),
    );
  }
}

class StoryCategoryScreen extends StatefulWidget {
  final String category;

  const StoryCategoryScreen({super.key, required this.category});

  @override
  State<StoryCategoryScreen> createState() => _StoryCategoryScreenState();
}

class _StoryCategoryScreenState extends State<StoryCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final filteredStoryCategory = story
        .where((q) => q.category == widget.category)
        .toList();
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: ListView.builder(
          itemCount: filteredStoryCategory.length,
          itemBuilder: (context, index) {
            final storyCategory = filteredStoryCategory[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color(0xFF2A2A2A),
                  border: Border(
                    left: BorderSide(color: storyCategory.color, width: 5),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: storyCategory.color,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            storyCategory.shortName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              storyCategory.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  storyCategory.category,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  ' - ${storyCategory.type}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: storyCategory.color,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8.0,
                                      right: 8.0,
                                      top: 1,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      storyCategory.category,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 16,
                                      color: storyCategory.color,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      storyCategory.time,
                                      style: TextStyle(
                                        color: storyCategory.color,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    StoryDetailScreen(name: storyCategory.name),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: storyCategory.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
