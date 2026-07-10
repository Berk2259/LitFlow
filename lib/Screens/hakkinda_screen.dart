import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HakkindaScreen extends StatelessWidget {
  const HakkindaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Hakkında',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue.shade300.withOpacity(0.25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/information.png',
                            scale: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF1E1E1E),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.07),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.purple.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.book_sharp,
                                color: Colors.purple,
                                size: 40,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'LitFlow',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Sürüm 1.0.0 Beta',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                            child: Text(
                              'Şiirler,sözler,hikayeler ve daha fazlası tek bir uygulamada',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  'İkon ve görsel kaynakları',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF1E1E1E),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.07),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.teal.withOpacity(0.2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.info_outline,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Flaticon İkonları'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Bu uygulamada kullanılan ikonların bazıları ',
                                ),
                                TextSpan(
                                  text: 'www.flaticon.com',
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final uri = Uri.parse(
                                        'https://www.flaticon.com',
                                      );
                                      if (await canLaunchUrl(uri)) {
                                        await launchUrl(
                                          uri,
                                          mode: LaunchMode.externalApplication,
                                        );
                                      }
                                    },
                                ),
                                const TextSpan(
                                  text:
                                      ' adresinden alınmıştır ve ilgili tasarımcılara aittir.',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(indent: 16, endIndent: 16),
                        AttributionRow(
                          icon: 'advanture.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'ancient.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'open-book.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'books.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'boy.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'broken-heart.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'depression.png',
                          author: 'Afian Rochmah Afif',
                          url:
                              'https://www.flaticon.com/authors/afian-rochmah-afif',
                        ),
                        AttributionRow(
                          icon: 'private-detective.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'dove.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'education.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'fairytale.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'magic-lamp.png',
                          author: 'andinur',
                          url: 'https://www.flaticon.com/authors/andinur',
                        ),
                        AttributionRow(
                          icon: 'clapperboard.png',
                          author: 'HJ Studio',
                          url: 'https://www.flaticon.com/authors/hj-studio',
                        ),
                        AttributionRow(
                          icon: 'diet.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'supoort.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'heart.png',
                          author: 'Kroffle',
                          url: 'https://www.flaticon.com/authors/kroffle',
                        ),
                        AttributionRow(
                          icon: 'wishes.png',
                          author: 'anilofex',
                          url: 'https://www.flaticon.com/authors/anilofex',
                        ),
                        AttributionRow(
                          icon: 'information.png',
                          author: 'Anggara',
                          url: 'https://www.flaticon.com/authors/anggara',
                        ),
                        AttributionRow(
                          icon: 'lol.png',
                          author: 'justicon',
                          url: 'https://www.flaticon.com/authors/justicon',
                        ),
                        AttributionRow(
                          icon: 'motivation.png',
                          author: 'pojok d',
                          url: 'https://www.flaticon.com/authors/pojok-d',
                        ),
                        AttributionRow(
                          icon: 'leaf.png',
                          author: 'Mayor Icons',
                          url: 'https://www.flaticon.com/authors/mayor-icons',
                        ),
                        AttributionRow(
                          icon: 'novel.png',
                          author: 'Three Musketeers',
                          url:
                              'https://www.flaticon.com/authors/three-musketeers',
                        ),
                        AttributionRow(
                          icon: 'philosopher.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'philosophy.png',
                          author: 'Assia Benkerroum',
                          url:
                              'https://www.flaticon.com/authors/assia-benkerroum',
                        ),
                        AttributionRow(
                          icon: 'pillar.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'poet.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'poetry.png',
                          author: 'Icon Home',
                          url: 'https://www.flaticon.com/authors/icon-home',
                        ),
                        AttributionRow(
                          icon: 'alien.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'inverted-commas.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'inverted-commas.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                        AttributionRow(
                          icon: 'reading-book.png',
                          author: 'mangsaabguru',
                          url: 'https://www.flaticon.com/authors/mangsaabguru',
                        ),
                        AttributionRow(
                          icon: 'write.png',
                          author: 'Freepik',
                          url: 'https://www.flaticon.com/authors/freepik',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AttributionRow extends StatelessWidget {
  final String icon;
  final String author;
  final String url;

  const AttributionRow({
    required this.icon,
    required this.author,
    required this.url,
  });

  Future<void> _openLink() async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(16, 4, 0, 4),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: icon),
            TextSpan(text: ' made by '),
            TextSpan(
              text: author,
              recognizer: TapGestureRecognizer()..onTap = _openLink,
            ),
            TextSpan(text: ' From '),
            TextSpan(
              text: 'www.flaticon.com',
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final uri = Uri.parse('https://www.flaticon.com');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
            ),
          ],
        ),
      ),
    );
  }
}
