import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesService {
  static Future<List<Map<String, dynamic>>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList('favorites') ?? [];

    return data.map((e) {
      try {
        final decoded = jsonDecode(e) as Map<String, dynamic>;
        // Integer'ı Color'a çevir
        if (decoded['color'] != null) {
          decoded['color'] = Color(decoded['color']);
        }
        return decoded;
      } catch (_) {
        return {
          "title": e,
          "description": e,
          "type": "unknown",
          "asset": null,
          "color": Colors.grey,
        };
      }
    }).toList();
  }

  static Future<void> toggleFavorite({
    required String title,
    required String type,
    required String description,
    required String asset,
    required Color color,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList('favorites') ?? [];

    final encoded = jsonEncode({
      "title": title,
      "type": type,
      "description": description,
      if (asset != null) "asset": asset,
      if (color != null) "color": color.value,
    });

    if (favorites.contains(encoded)) {
      favorites.remove(encoded);
    } else {
      favorites.add(encoded);
    }

    await prefs.setStringList('favorites', favorites);
  }

  static Future<bool> isFavorite({
    required String title,
    required String type,
    required String description,
    required String asset,
    required Color color,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList('favorites') ?? [];

    final encoded = jsonEncode({
      "title": title,
      "type": type,
      "description": description,

      if (asset != null) "asset": asset,
      if (color != null) "color": color.value,
    });

    return favorites.contains(encoded);
  }

  static bool isFavoriteInList(
    List<Map<String, dynamic>> favorites,
    String title,
    String type,
    String description,
    String asset,
    Color color,
  ) {
    return favorites.any(
      (f) =>
          f["title"] == title &&
          f["description"] == description &&
          f["type"] == type &&
          (asset == null || f["asset"] == asset) &&
          (color == null ||
              (f["color"] is Color &&
                  (f["color"] as Color).value == color.value)),
    );
  }
}
