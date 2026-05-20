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
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: ListView.builder(
          itemCount: filteredSiirler.length,
          itemBuilder: (context, index) {
            final siir = filteredSiirler[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      width: 15,
                      decoration: BoxDecoration(
                        color: siir.color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.blueGrey.shade900,
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
                              Text(
                                siir.title,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              ...siir.text.asMap().entries.map((entry) {
                                int textIndex = entry.key;
                                String textLine = entry.value;
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '• $textLine',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      height: 1.5,
                                    ),
                                  ),
                                );
                              }).toList(),
                              Text(
                                '- ${siir.author} -',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
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
    );
  }
}
