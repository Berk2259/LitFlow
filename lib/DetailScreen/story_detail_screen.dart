import 'package:flutter/material.dart';
import 'package:lirica/Data/story.dart';
import 'package:lirica/Services/favorite_services.dart';

class StoryDetailScreen extends StatefulWidget {
  final String name;
  const StoryDetailScreen({super.key, required this.name});

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
    final currentStory = story.firstWhere(
      (q) => q.name == widget.name,
      orElse: () => story.first,
    );

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: currentStory.gradientColors,
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
                        child: Icon(Icons.arrow_back_ios, color: Colors.white),
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
                          currentStory.category,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      currentStory.name,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          currentStory.category,
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: currentStory.color.withOpacity(0.15),
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
                              Icon(
                                Icons.access_time,
                                color: currentStory.color,
                              ),
                              SizedBox(width: 10),

                              Text(
                                currentStory.time,
                                style: TextStyle(color: currentStory.color),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: currentStory.color.withOpacity(0.15),
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
                              Icon(Icons.book, color: currentStory.color),
                              SizedBox(width: 10),
                              Text(
                                currentStory.section,
                                style: TextStyle(color: currentStory.color),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentStory.color.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            currentStory.shortName,
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                        child: Row(
                          children: [
                            Icon(Icons.book, color: currentStory.color),
                            Text(
                              'Hikaye',
                              style: TextStyle(
                                color: currentStory.color,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          currentStory.story,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: currentStory.color.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () async {
                  await FavoritesService.toggleFavorite(
                    title: currentStory.name,
                    type: 'Hikaye',
                    description: currentStory.category,
                    asset: 'assets/icons/story.png',
                    color: currentStory.color,
                  );
                  if (!mounted) return;
                  await loadFavorites();
                },
                icon: Icon(
                  favorites.any(
                        (f) =>
                            f["title"] == currentStory.name &&
                            f["type"] == "Hikaye",
                      )
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                      favorites.any(
                        (f) =>
                            f["title"] == currentStory.name &&
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
