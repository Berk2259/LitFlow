import 'package:flutter/material.dart';
import 'package:lirica/Data/sozler.dart';

class SozlerDetailScreen extends StatelessWidget {
  final String category;
  const SozlerDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final filteredSozler = sozler.where((q) => q.kategori == category).toList();
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
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
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      Text(
                        '${filteredSozler.length} söz',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF8A8A),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.format_quote_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(endIndent: 16, indent: 16, thickness: 1),
            Expanded(
              child: ListView.builder(
                itemCount: filteredSozler.length,
                itemBuilder: (context, index) {
                  final ozlu_sozler = filteredSozler[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
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
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 16.0,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 4,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: ozlu_sozler.color,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                      ),
                                      child: Icon(
                                        Icons.format_quote_rounded,
                                        color: ozlu_sozler.color,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                ozlu_sozler.text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Divider(color: Colors.grey.shade800),
                              Text(
                                textAlign: TextAlign.center,
                                ozlu_sozler.author,
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
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
