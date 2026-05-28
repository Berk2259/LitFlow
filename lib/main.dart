import 'package:flutter/material.dart';
import 'package:lirica/Screens/screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  /*     WidgetsFlutterBinding.ensureInitialized();
  
  // Bütün favorileri sil
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('favorites');   */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}
