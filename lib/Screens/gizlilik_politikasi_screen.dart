import 'package:LitFlow/Screens/screens.dart';
import 'package:flutter/material.dart';

class GizlilikPolitikasiScreen extends StatelessWidget {
  const GizlilikPolitikasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
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
                            'Gizlilik Politikası',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '14 Temmuz 2026',
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
                          'Gizlilik Politikası',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'LitFlow, kullanıcılarının gizliliğine önem vermektedir. Bu Gizlilik Politikası, uygulamanın hangi bilgileri kullandığını ve kullanıcı verilerine nasıl yaklaştığını açıklamaktadır.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Toplanan Veriler',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'LitFlow, kullanıcılarından herhangi bir kişisel bilgi toplamaz, saklamaz veya paylaşmaz.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Uygulama kapsamında aşağıdaki bilgiler toplanmaz:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        oneRow(text: 'Ad ve soyad'),
                        oneRow(text: 'E-posta adresid'),
                        oneRow(text: 'Telefon numarası'),
                        oneRow(text: 'Konum bilgisi'),
                        oneRow(text: 'Cihaz rehberi'),
                        oneRow(text: 'Fotoğraf veya medya dosyaları'),
                        oneRow(text: 'Kullanıcı hesabı bilgileri'),
                        SizedBox(height: 16),
                        Text(
                          'Uygulama İçeriği',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Uygulamada yer alan şiirler, hikâyeler, kitap bilgileri, atasözleri, deyimler, edebi sözler ile şair ve yazar bilgileri uygulamanın içerisinde yerel olarak saklanmaktadır. Bu içeriklere erişmek için internet bağlantısı gerekmez.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Üçüncü Taraf Hizmetleri',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'LitFlow, kullanıcı verilerini işleyen herhangi bir üçüncü taraf hizmeti kullanmamaktadır. Uygulamada reklam, analiz (analytics), bulut veritabanı veya kullanıcı takip sistemi bulunmamaktadır.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Harici Bağlantılar',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Uygulama içerisinde geliştirici ile iletişime geçebilmeniz amacıyla e-posta uygulamasını açan bağlantılar bulunabilir. Bu işlem yalnızca sizin isteğinizle gerçekleştirilir ve LitFlow tarafından herhangi bir veri toplanmaz.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Veri Güvenliği',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Uygulama herhangi bir kişisel veri toplamadığından veya sunucularda saklamadığından kullanıcı verilerinin işlenmesi söz konusu değildir.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Çocukların Gizliliği',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'LitFlow, her yaş grubundan kullanıcı tarafından kullanılabilir. Uygulama çocuklardan veya diğer kullanıcılardan kişisel veri toplamaz.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Gizlilik Politikasındaki Değişiklikler',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Bu Gizlilik Politikası gerektiğinde güncellenebilir. Güncel sürüm uygulama içerisinde veya uygulamanın resmi yayın sayfasında yayımlanacaktır.',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'İletişim',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Gizlilik Politikası ile ilgili soru, öneri veya görüşleriniz için iletişim bölümü üzerinden geliştirici ile iletişime geçebilirsiniz:',
                        ),
                        SizedBox(height: 16),
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
