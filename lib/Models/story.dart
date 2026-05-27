import 'package:flutter/material.dart';

class Story {
  final String name;
  final String category;
  final String type;
  final Color color;
  final String time;
  final String story;
  final String section;
  final String shortName;
  final List<Color> gradientColors;
  Story({
    required this.name,
    required this.category,
    required this.type,
    required this.color,
    required this.time,
    required this.story,
    required this.section,
    required this.shortName,
    required this.gradientColors,
  });
}
