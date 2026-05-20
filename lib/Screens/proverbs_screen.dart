import 'package:flutter/material.dart';
import 'package:lirica/Data/proverbs.dart';

class ProverbsScreen extends StatelessWidget {
  const ProverbsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: SafeArea(
        child: ListView.builder(
          itemCount: proverbs.length,
          itemBuilder: (context, index) {
            final proverb = proverbs[index];
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                  border: Border.all(color: Colors.blue, width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        proverb.name,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        proverb.description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      Text(
                        proverb.kategori,
                        style: TextStyle(fontSize: 12, color: Colors.red),
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
