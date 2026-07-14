import 'package:flutter/material.dart';

class UygulamaHakkindaScreen extends StatelessWidget {
  const UygulamaHakkindaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                            'LitFlow Hakkında',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Aşağıda uygulama hakkında genel bilgiye ulaşabilirsiniz',
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
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edebiyatın zengin dünyasını tek bir uygulamada keşfedin!',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Bu uygulama; edebiyatı sevenler, yeni bilgiler öğrenmek isteyenler ve kültürel birikimini geliştirmeyi amaçlayan herkes için hazırlanmıştır. Türk edebiyatının önemli eserlerine ve değerlerine kolayca ulaşabilir, birbirinden farklı içerikleri tek bir platformda keşfedebilirsiniz.',
                        ),
                        SizedBox(height: 16),
                        Text('Uygulama İçerisinde:'),
                        SizedBox(height: 16),
                        oneRow(text: 'Şiirler'),
                        oneRow(text: 'Edebi sözler'),
                        oneRow(text: 'Hikâyeler'),
                        oneRow(text: 'Kitap tanıtımları ve bilgileri'),
                        oneRow(text: 'Deyimler ve anlamları'),
                        oneRow(text: 'Atasözleri ve açıklamaları'),
                        oneRow(
                          text:
                              'Ünlü şairlerin ve yazarların hayatları ile eserleri',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'gibi birçok farklı içeriğe hızlı ve kolay bir şekilde erişebilirsiniz.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Sade ve kullanıcı dostu arayüzü sayesinde dilediğiniz kategoride gezinebilir, yeni bilgiler öğrenebilir ve edebiyat kültürünüzü geliştirebilirsiniz. İster günlük hayatta anlamını merak ettiğiniz bir deyimi araştırın, ister sevdiğiniz bir şairin hayatını inceleyin ya da yeni kitaplar keşfedin; aradığınız tüm içerikler parmaklarınızın ucunda.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Edebiyatın geçmişten günümüze uzanan zengin mirasını keşfetmek ve her gün yeni bilgiler edinmek için uygulamamızı hemen deneyin.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class oneRow extends StatelessWidget {
  final String text;
  const oneRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• "),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
