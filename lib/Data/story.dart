import 'package:flutter/material.dart';
import 'package:lirica/Models/story.dart';

List<Story> story = [
  Story(
    name: 'Keloğlan ve Nasreddin Hoca',
    category: 'Masal',
    type: 'Türk',
    color: Colors.blue,
    time: '6 dk',
    story:
        'Keloğlan bir sabah pazara giderken yolda Nasreddin Hoca ile karşılaşır. Hoca her zamanki gibi gülümseyerek ona bugün aklını kalbinle birlikte kullanmasını öğütler. İkili köydeki anlaşmazlığı çözmek için küçük bir yolculuğa çıkar. Keloğlan cesaretiyle, Hoca ise nükteli sözleriyle herkesi aynı sofrada buluşturur. Gün sonunda Keloğlan şunu anlar: Gerçek bilgelik sadece çok bilmek değil, doğru zamanda doğru sözü de söyleyebilmektir.',
    section: '3 bölüm',
    shortName: 'KH',
    gradientColors: [
      Color(0xFF0052D4).withOpacity(0.25),
      Color(0xFF1B2A47).withOpacity(0.25),
    ],
  ),
  Story(
    name: 'Dede Korkut Hikayeleri',
    category: 'Destan',
    type: 'Türk',
    color: Colors.green,
    time: '8 dk',
    story:
        'Dirse Han\'ın oğlu Boğaç, henüz toy bir delikanlıyken babasının meydanına çıkan yabani bir boğayla yalnız başına dövüşür ve onu yere serer. Bu yiğitliği karşısında Dede Korkut gelir, ona "Boğaç" adını verir ve alp erenlerin arasına katar. Ancak kıskançlık hiç bitmez; babasının kırk yiğidi Boğaç\'a tuzak kurar. Dağda yaralı bırakılan Boğaç, annesinin şefkati ve kutsal bir geyiğin sütüyle iyileşir. Sonunda babasını bulur, gerçeği öğrenir ve affeder. Dede Korkut bu destanı şöyle bağlar: Yiğitliğin temeli cesaret, tacı ise affedebilmektir.',
    section: '4 bölüm',
    shortName: 'DK',
    gradientColors: [
      Color(0xFF1B5E20).withOpacity(0.25),
      Color(0xFF0A2E0A).withOpacity(0.25),
    ],
  ),
];
