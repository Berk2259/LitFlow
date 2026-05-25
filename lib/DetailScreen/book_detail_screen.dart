import 'package:flutter/material.dart';
import 'package:lirica/Data/book.dart';
import 'package:lirica/Models/book.dart';

class BookDetailScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final filteredBook = book.where((q) => q.kategori == category).toList();
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
                      themeColor: themeColor,
                      blurColor: blurColor,
                      icon: icon,
                      alignment: MainAxisAlignment.start,
                    )
                  else
                    TopSection(
                      currentBook: currentBook,
                      themeColor: themeColor,
                      blurColor: blurColor,
                      icon: icon,
                      alignment: MainAxisAlignment.end,
                    ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF2A2A2A),
                      border: Border(
                        left: BorderSide(color: themeColor, width: 5),
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
                            color: themeColor,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: themeColor,
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
                  Row(
                    children: [
                      Expanded(child: Divider(indent: 16, endIndent: 8,color: blurColor)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Image.asset('assets/icons/book.png', scale: 18,color: blurColor),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Expanded(child: Divider(indent: 8, endIndent: 16,color: blurColor)),
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
                // SAĞ: YAZIlar - ASSET
                Column(
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
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        currentBook.author,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
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
                // SOL: ASSET - YAZILER
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16), // ✅ LEFT
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
                      padding: const EdgeInsets.only(right: 16.0), // ✅ RIGHT
                      child: Text(
                        currentBook.author,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
      ),
    );
  }
}
