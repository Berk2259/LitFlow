import 'package:flutter/material.dart';
import 'package:lirica/Data/siirler.dart';

class SiirlerDetailScreen extends StatelessWidget {
  final String category;
  const SiirlerDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final filteredSiirler = siirler
        .where((q) => q.kategori == category)
        .toList();
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        '${filteredSiirler.length} Şiir',
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
                        color:  Color(0xFFFFE066),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/icons/poetry.png',scale: 18,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(endIndent: 16, indent: 16),

            Expanded(
              child: ListView.builder(
                itemCount: filteredSiirler.length,
                itemBuilder: (context, index) {
                  final siir = filteredSiirler[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 4,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: siir.color,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/icons/book.png',
                                  scale: 18,
                                  color: siir.color,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  siir.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: siir.color,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            ...siir.text.asMap().entries.map((entry) {
                              int textIndex = entry.key;
                              String textLine = entry.value;
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  textLine,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.5,
                                  ),
                                ),
                              );
                            }).toList(),
                            Divider(color: Colors.grey.shade800),
                            Text(
                              siir.author,
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
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
          ],
        ),
      ),
    );
  }
}
