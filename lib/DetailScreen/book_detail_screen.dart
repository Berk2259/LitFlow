import 'package:flutter/material.dart';
import 'package:lirica/Data/book.dart';

class BookDetailScreen extends StatelessWidget {
  final String category;
  const BookDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final filteredBook = book.where((q) => q.kategori == category).toList();
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: ListView.builder(
          itemCount: filteredBook.length,
          itemBuilder: (context, index) {
            final book = filteredBook[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                  border: Border.all(color: Colors.blue, width: 3),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('assets/icons/detective.png'),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'İsim: \n${book.name}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Yazar: \n${book.author}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Sayfa Sayısı: \n${book.pageNo}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              book.description,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
