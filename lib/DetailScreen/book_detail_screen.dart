import 'package:flutter/material.dart';
import 'package:lirica/Data/book.dart';
import 'package:lirica/Models/book.dart';
import 'package:lirica/Services/favorite_services.dart';

class BookDetailScreen extends StatefulWidget {
  final String category;
  final Color themeColor;
  final String icon;
  final Color blurColor;
  const BookDetailScreen({
    super.key,
    required this.category,
    required this.themeColor,
    required this.icon,
    required this.blurColor,
  });

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
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
    final filteredBook = book
        .where((q) => q.kategori == widget.category)
        .toList();
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: ListView.builder(
          itemCount: filteredBook.length,
          itemBuilder: (context, index) {
            final currentBook = filteredBook[index];
            final isLeft = index % 2 == 0;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isLeft)
                    TopSection(
                      currentBook: currentBook,
                      themeColor: widget.themeColor,
                      blurColor: widget.blurColor,
                      icon: widget.icon,
                      alignment: MainAxisAlignment.start,
                    )
                  else
                    TopSection(
                      currentBook: currentBook,
                      themeColor: widget.themeColor,
                      blurColor: widget.blurColor,
                      icon: widget.icon,
                      alignment: MainAxisAlignment.end,
                    ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF2A2A2A),
                      border: Border(
                        left: BorderSide(color: widget.themeColor, width: 5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            left: 16.0,
                            bottom: 8.0,
                          ),
                          child: Icon(
                            Icons.format_quote_rounded,
                            color: widget.themeColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: Text(
                            currentBook.description,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: widget.themeColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            child: Text(
                              '${currentBook.pageNo} sayfa',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () async {
                          await FavoritesService.toggleFavorite(
                            title: currentBook.name,
                            type: 'Kitap',
                            description: currentBook.author,
                            asset: 'assets/icons/bookshelf.png',
                            color: Colors.purple.shade300,
                          );
                          if (!mounted) return;
                          await loadFavorites();
                        },
                        icon: Icon(
                          favorites.any(
                                (f) =>
                                    f["title"] == currentBook.name &&
                                    f["type"] == "Kitap",
                              )
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              favorites.any(
                                (f) =>
                                    f["title"] == currentBook.name &&
                                    f["type"] == "Kitap",
                              )
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 16,
                          endIndent: 8,
                          color: widget.blurColor,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Image.asset(
                        'assets/icons/book.png',
                        scale: 18,
                        color: widget.blurColor,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Expanded(
                        child: Divider(
                          indent: 8,
                          endIndent: 16,
                          color: widget.blurColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  final Book currentBook;
  final Color themeColor;
  final Color blurColor;
  final String icon;
  final MainAxisAlignment alignment;
  const TopSection({
    super.key,
    required this.currentBook,
    required this.themeColor,
    required this.blurColor,
    required this.icon,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: alignment,
        children: alignment == MainAxisAlignment.end
            ? [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text(
                          currentBook.name,

                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          currentBook.author,

                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 75,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: themeColor,
                    boxShadow: [BoxShadow(color: blurColor, blurRadius: 8)],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 15),
                  ),
                ),
              ]
            : [
                Container(
                  width: 75,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: themeColor,
                    boxShadow: [BoxShadow(color: blurColor, blurRadius: 8)],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(icon, scale: 15),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          currentBook.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          currentBook.author,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
      ),
    );
  }
}
