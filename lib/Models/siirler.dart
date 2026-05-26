import 'package:flutter/material.dart';

class Siirler {
  final List<String> text;
  final String author;
  final String kategori;
  final String title;
  final Color color;
  final int id;
  Siirler({
    required this.text,
    required this.author,
    required this.kategori,
    required this.title,
    required this.color,
    required this.id
  });
}
