import 'package:flutter/material.dart';
import 'package:LitFlow/Screens/screens.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  /*     WidgetsFlutterBinding.ensureInitialized();
  
  // Bütün favorileri sil
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('favorites');   */
await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.black,
        brightness: Brightness.dark,
      ),
    );
  }
}
