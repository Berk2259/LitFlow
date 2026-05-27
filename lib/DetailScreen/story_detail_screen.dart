import 'package:flutter/material.dart';
import 'package:lirica/Services/favorite_services.dart';

class StoryDetailScreen extends StatefulWidget {
  const StoryDetailScreen({super.key});

  @override
  State<StoryDetailScreen> createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  List<Map<String, dynamic>> favorites = [];

  @override
  void initState() {
    super.initState();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    favorites = await FavoritesService.getFavorites();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0052D4), // Canlı mavi (sol üst)
                    Color(0xFF1B2A47), // Koyu lacivert (sağ alt)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Masal',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Keloğlan ve Nasreddin Hoca',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Masal',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Türk',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8),
              child: Container(
                width: double.infinity,
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
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.access_time, color: Colors.blue),
                              SizedBox(width: 10),

                              Text(
                                '6 dk',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.withOpacity(0.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.book, color: Colors.blue),
                              SizedBox(width: 10),
                              Text(
                                '3 bölüm',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'KH',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF2A2A2A),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                      child: Row(
                        children: [
                          Icon(Icons.book, color: Colors.blue),
                          Text(
                            'Hikaye',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Keloğlan bir sabah pazara giderken yolda Nasreddin Hoca ile karşılaşır.Hoca her zamanaki gibi gülümseyerek ona bugün aklını kalbinle birlikte kullanmasını öğütler. İkili köydeki anlaşmazlığı çözmek için küçük bir yolculuğa çıkar.Keloğlan cesarityle,Hoca ise nükteli sözleriyle herkesi aynı sofrada buluşturur. Gün sonunda Keloğlan sunu anlar: Gerçek bilgelik sadece çok bilmek değil, doğru zamanda doğru sözü de söyleyebilmektir.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () async {
                  await FavoritesService.toggleFavorite(
                    title: 'Nasreddin Hoca',
                    type: 'Hikaye',
                    description: 'Masal',
                    asset: 'assets/icons/story.png',
                    color: Colors.blue.shade300,
                  );
                  if (!mounted) return;
                  await loadFavorites();
                },
                icon: Icon(
                  favorites.any(
                        (f) =>
                            f["title"] == 'Nasreddin Hoca' &&
                            f["type"] == "Hikaye",
                      )
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                      favorites.any(
                        (f) =>
                            f["title"] == 'Nasreddin Hoca' &&
                            f["type"] == "Hikaye",
                      )
                      ? Colors.red
                      : Colors.white,
                ),
                label: Text(
                  'Favoriye Ekle',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
