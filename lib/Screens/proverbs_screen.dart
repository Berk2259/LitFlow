import 'package:flutter/material.dart';
import 'package:lirica/Data/proverbs.dart';
import 'package:lirica/Services/favorite_services.dart';

class ProverbsScreen extends StatefulWidget {
  const ProverbsScreen({super.key});

  @override
  State<ProverbsScreen> createState() => _ProverbsScreenState();
}

class _ProverbsScreenState extends State<ProverbsScreen> {
  String selectedFilter = 'Tümü';
  String searchQuery = '';

  // 2. Filtreleme methodu
  List<dynamic> getFilteredProverbs() {
    var filtered = selectedFilter == 'Tümü'
        ? proverbs
        : proverbs.where((p) => p.kategori == selectedFilter).toList();

    // Arama filtresi ekle
    if (searchQuery.isEmpty) return filtered;

    return filtered
        .where(
          (p) =>
              p.name.toLowerCase().contains(searchQuery) ||
              p.description.toLowerCase().contains(searchQuery),
        )
        .toList();
  }

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

  Widget filterButton(String label) {
    bool isSelected = selectedFilter == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilter = label;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Colors.pink.shade400 : Colors.grey.shade900,
          border: Border.all(
            color: isSelected ? Colors.pink.shade400 : Colors.grey,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredProverbs = getFilteredProverbs();
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                          'Atasözleri Ve Deyimler',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Atasözleri ve Deyimlerle ilgili bilgiler',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/write.png',
                            scale: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(endIndent: 16, indent: 16, thickness: 1),

            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
                left: 16,
                right: 16,
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

                  prefixIcon: Icon(Icons.search, color: Colors.grey.shade800),
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
              padding: const EdgeInsets.only(
                left: 16,
                top: 16.0,
                bottom: 20,
                right: 16,
              ),
              child: Row(
                children: [
                  Expanded(child: filterButton('Tümü')),
                  SizedBox(width: 8),
                  Expanded(child: filterButton('Atasözü')),
                  SizedBox(width: 8),
                  Expanded(child: filterButton('Deyim')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Liste',
                        style: TextStyle(
                          color: Colors.pink.shade300,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Tüm Kayıtlar',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Text(
                      filteredProverbs.length.toString(),
                      style: TextStyle(
                        color: Colors.pink.shade300,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (filteredProverbs.isEmpty)
              Expanded(
                child: Center(
                  child: Text(
                    'Sonuç bulunamadı',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              )
            else
              Expanded(
                child: ListView.builder(
                  itemCount: filteredProverbs.length,
                  itemBuilder: (context, index) {
                    final proverb = filteredProverbs[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 12.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              width: 5,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: Colors.pink.shade300,
                              ),
                            ),
                            // İçerik alanı
                            Expanded(
                              child: Container(
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
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          15,
                                                        ),
                                                    color: Colors
                                                        .pinkAccent
                                                        .shade200
                                                        .withOpacity(0.30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          8.0,
                                                        ),
                                                    child: Icon(
                                                      Icons
                                                          .format_quote_rounded,
                                                      color: Colors.pink,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Expanded(
                                                  child: Text(
                                                    proverb.name,

                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              proverb.description,

                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey.shade300,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.pink.shade300,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 4.0,
                                                    ),
                                                child: Text(
                                                  proverb.kategori,
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      IconButton(
                                        onPressed: () async {
                                          await FavoritesService.toggleFavorite(
                                            title: proverb.name,
                                            type: proverb.kategori,
                                            description: proverb.description,
                                            asset: 'assets/icons/write.png',
                                            color: Colors.pink.shade300,
                                          );
                                          if (!mounted) return;
                                          await loadFavorites();
                                        },
                                        icon: Icon(
                                          favorites.any(
                                                (f) =>
                                                    f["title"] ==
                                                        proverb.name &&
                                                    f["type"] ==
                                                        proverb.kategori,
                                              )
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color:
                                              favorites.any(
                                                (f) =>
                                                    f["title"] ==
                                                        proverb.name &&
                                                    f["type"] ==
                                                        proverb.kategori,
                                              )
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
