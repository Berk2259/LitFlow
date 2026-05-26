import 'package:flutter/material.dart';

class Poet {
  final String name;
  final String shortName;
  final String description;
  final String category;
  final String job;
  final String about;
  final List<String> products;
  final List<String> words;
  final String birth;
  final Color color;

  Poet({
    required this.name,
    required this.shortName,
    required this.description,
    required this.category,
    required this.job,
    required this.about,
    required this.products,
    required this.words,
    required this.birth,
    required this.color,
  });
}
