import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconHakkindaScreen extends StatelessWidget {
  const IconHakkindaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flaticon İconları',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Aşağıda uygulamada kullanılan ikonların kaynakları listelenmiştir',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(endIndent: 16, indent: 16, thickness: 1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AttributionRow(
                        author: 'Freepik',
                        url: 'https://www.flaticon.com/authors/freepik',
                      ),

                      AttributionRow(
                        author: 'Afian Rochmah Afif',
                        url:
                            'https://www.flaticon.com/authors/afian-rochmah-afif',
                      ),

                      AttributionRow(
                        author: 'andinur',
                        url: 'https://www.flaticon.com/authors/andinur',
                      ),
                      AttributionRow(
                        author: 'HJ Studio',
                        url: 'https://www.flaticon.com/authors/hj-studio',
                      ),

                      AttributionRow(
                        author: 'Kroffle',
                        url: 'https://www.flaticon.com/authors/kroffle',
                      ),
                      AttributionRow(
                        author: 'anilofex',
                        url: 'https://www.flaticon.com/authors/anilofex',
                      ),
                      AttributionRow(
                        author: 'Anggara',
                        url: 'https://www.flaticon.com/authors/anggara',
                      ),
                      AttributionRow(
                        author: 'justicon',
                        url: 'https://www.flaticon.com/authors/justicon',
                      ),
                      AttributionRow(
                        author: 'pojok d',
                        url: 'https://www.flaticon.com/authors/pojok-d',
                      ),
                      AttributionRow(
                        author: 'Mayor Icons',
                        url: 'https://www.flaticon.com/authors/mayor-icons',
                      ),
                      AttributionRow(
                        author: 'Three Musketeers',
                        url:
                            'https://www.flaticon.com/authors/three-musketeers',
                      ),

                      AttributionRow(
                        author: 'Assia Benkerroum',
                        url:
                            'https://www.flaticon.com/authors/assia-benkerroum',
                      ),

                      AttributionRow(
                        author: 'Icon Home',
                        url: 'https://www.flaticon.com/authors/icon-home',
                      ),

                      AttributionRow(
                        author: 'mangsaabguru',
                        url: 'https://www.flaticon.com/authors/mangsaabguru',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
                        child: Row(
                          children: [
                            Icon(
                              Icons.open_in_new,
                              size: 20,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                text: 'Flaticon adresini ziyaret et',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.orange,
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
                            ),
                          ],
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
  }
}

class AttributionRow extends StatelessWidget {
  final String author;
  final String url;

  const AttributionRow({required this.author, required this.url});

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
            TextSpan(
              text: 'Icons made by ',
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: author,
              style: TextStyle(decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()..onTap = _openLink,
            ),
            TextSpan(
              text: ' from ',
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: 'www.flaticon.com',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.lightBlue,
              ),
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
