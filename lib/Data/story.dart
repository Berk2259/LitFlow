import 'package:flutter/material.dart';
import 'package:lirica/Models/story.dart';

List<Story> story = [
  Story(
    name: 'Keloğlan ve Nasreddin Hoca',
    category: 'Masal',
    type: 'Türk',
    color: Colors.blue,
    time: '5 dk',
    story:
        'Keloğlan bir gün köyünden çıkıp pazara doğru giderken Nasreddin Hoca ile karşılaşır. Hoca ona hayatın sadece güçle değil, akıl ve sabırla da kazanıldığını anlatır. Köyde iki kişi arasında çıkan anlaşmazlığı çözmek için birlikte yola koyulurlar. Keloğlan cesaretiyle, Nasreddin Hoca ise zekâsı ve nükteleriyle sorunu çözer. Bu olaydan sonra Keloğlan, gerçek bilginin çok şey bilmek değil, doğru zamanda doğru davranabilmek olduğunu öğrenir.',
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
        'Oğuz Türklerinin kahramanlık hikâyelerini anlatan Dede Korkut destanlarında cesaret, aile, dostluk ve onur gibi değerler işlenir. Boğaç Han hikâyesinde genç Boğaç, güçlü bir boğayı yenerek adını kazanır. Ancak kıskançlık nedeniyle büyük bir ihanete uğrar ve ağır yaralanır. Annesinin sevgisi ve Dede Korkut’un bilgeliği sayesinde yeniden hayata döner. Boğaç Han sonunda affetmenin ve merhametin de büyük bir erdem olduğunu gösterir.',
    section: '4 bölüm',
    shortName: 'DK',
    gradientColors: [
      Color(0xFF1B5E20).withOpacity(0.25),
      Color(0xFF0A2E0A).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Karagöz ve Hacivat',
    category: 'Geleneksel',
    type: 'Türk',
    color: Colors.orange,
    time: '5 dk',
    story:
        'Karagöz ve Hacivat, Türk gölge oyununun en sevilen karakterleridir. Hacivat bilgili ve süslü konuşmayı seven bir kişidir, Karagöz ise dobra ve halktan biridir. İkili her karşılaştığında farklı düşünceleri nedeniyle komik tartışmalar yaşar. Ancak bu tartışmalar insanların hatalarını görmesini ve birlikte yaşamayı öğrenmesini sağlar. Karagöz ve Hacivat hikâyeleri, mizah yoluyla toplumsal mesajlar veren önemli kültür miraslarımızdan biridir.',
    section: '3 bölüm',
    shortName: 'KH',
    gradientColors: [
      Color(0xFFFF9800).withOpacity(0.25),
      Color(0xFFE65100).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Fındık Kabuğunun Evi',
    category: 'Masal',
    type: 'Türk',
    color: Colors.redAccent,
    time: '4 dk',
    story:
        'Küçük bir canlı, kendisine ait sıcak ve güvenli bir yuva yapmak ister. Büyük ve gösterişli evler yerine küçük bir fındık kabuğunu seçer. Sevgiyle hazırladığı bu küçük yuva, ona mutluluğun büyüklükte değil, sahip olduklarının değerini bilmekte olduğunu öğretir. Zamanla herkes küçük şeylerin de büyük mutluluklar getirebileceğini anlar. Fındık Kabuğunun Evi, kanaatin, emeğin ve huzurun önemini anlatan güzel bir masaldır.',
    section: '2 bölüm',
    shortName: 'FK',
    gradientColors: [
      Colors.redAccent.withOpacity(0.25),
      Colors.red.shade900.withOpacity(0.25),
    ],
  ),
  Story(
    name: 'Çıldırmış Pendik',
    category: 'Hikâye',
    type: 'Türk',
    color: Colors.purple,
    time: '5 dk',
    story:
        'Pendik isimli genç, çevresindekilerin garip bulduğu davranışlarıyla tanınır. Ancak onun farklı düşünceleri aslında olaylara başka bir açıdan bakmasını sağlar. Yaşadığı maceralar boyunca insanların önyargılarıyla mücadele eder ve herkesin kendi içinde farklı bir dünya taşıdığını gösterir. Çıldırmış Pendik, eğlenceli anlatımıyla farklı olmanın değerini anlatır.',
    section: '3 bölüm',
    shortName: 'ÇP',
    gradientColors: [
      Color(0xFF9C27B0).withOpacity(0.25),
      Color(0xFF4A148C).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Zeyno ile Babası',
    category: 'Hikâye',
    type: 'Türk',
    color: Colors.blue,
    time: '6 dk',
    story:
        'Zeyno, babasıyla güçlü bir bağ kurmuş küçük bir kızdır. Babasının sevgisi ve öğütleri sayesinde hayatı, insanları ve çevresini anlamayı öğrenir. Birlikte yaşadıkları olaylar Zeyno’ya sevginin, sabrın ve aile bağlarının önemini gösterir. Bu hikâye baba-kız arasındaki özel ilişkiyi sıcak bir dille anlatır.',
    section: '3 bölüm',
    shortName: 'ZB',
    gradientColors: [
      Color(0xFF0052D4).withOpacity(0.25),
      Color(0xFF1B2A47).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Kırmızı Başlıklı Kız',
    category: 'Masal',
    type: 'Dünya',
    color: Colors.redAccent,
    time: '5 dk',
    story:
        'Kırmızı Başlıklı Kız, büyükannesine yiyecek götürmek için ormana gider. Yolda karşılaştığı kurt, onu kandırarak plan yapar. Ancak sonunda kurtun kötü niyeti ortaya çıkar ve Kırmızı Başlıklı Kız, dikkatli olmanın ve yabancılara güvenmemenin önemini öğrenir.',
    section: '3 bölüm',
    shortName: 'KBK',
    gradientColors: [
      Color(0xFFFF1744).withOpacity(0.25),
      Color(0xFF880E4F).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Pinokyo',
    category: 'Masal',
    type: 'Dünya',
    color: Colors.amber,
    time: '7 dk',
    story:
        'Geppetto isimli yaşlı bir marangoz, tahta bir kukla yapar ve ona Pinokyo adını verir. Pinokyo gerçek bir çocuk olmayı ister ancak bunun için dürüst, çalışkan ve iyi kalpli olması gerekir. Yalan söylediğinde burnu uzar ve yaşadığı maceralar ona doğruyu söylemenin önemini öğretir.',
    section: '4 bölüm',
    shortName: 'PN',
    gradientColors: [
      Color(0xFFFFC107).withOpacity(0.25),
      Color(0xFFFF6F00).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Küçük Prens',
    category: 'Felsefi',
    type: 'Dünya',
    color: Colors.lightBlue,
    time: '8 dk',
    story:
        'Küçük Prens, kendi küçük gezegeninden ayrılarak farklı gezegenleri ziyaret eder. Yolculuğu sırasında insanların dünyaya bakışını anlamaya çalışır. Bir pilotla karşılaşır ve ona dostluk, sevgi ve hayatın gerçek değerleri hakkında önemli şeyler öğretir. Hikâye, yetişkinlerin unuttuğu çocukça bakış açısını hatırlatır.',
    section: '4 bölüm',
    shortName: 'KP',
    gradientColors: [
      Color(0xFF03A9F4).withOpacity(0.25),
      Color(0xFF01579B).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Alice Harikalar Diyarında',
    category: 'Fantastik',
    type: 'Dünya',
    color: Colors.purple,
    time: '7 dk',
    story:
        'Alice, bir gün beyaz bir tavşanı takip ederek gizemli bir dünyaya girer. Burada konuşan hayvanlar, garip karakterler ve sıra dışı olaylarla karşılaşır. Harikalar Diyarı’ndaki macerası boyunca hayal gücünün ve merakın önemini keşfeder.',
    section: '4 bölüm',
    shortName: 'AH',
    gradientColors: [
      Color(0xFF9C27B0).withOpacity(0.25),
      Color(0xFF4A148C).withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Uyuyan Güzel',
    category: 'Masal',
    type: 'Dünya',
    color: Colors.amber.shade300,
    time: '5 dk',
    story:
        'Bir prenses doğduğunda kötü bir büyücü tarafından lanetlenir. Yıllar sonra büyünün etkisiyle derin bir uykuya dalar. Uzun bir bekleyişin ardından sevgi ve cesaret sayesinde büyü bozulur. Uyuyan Güzel, iyiliğin ve umudun sonunda kazanacağını anlatan klasik bir masaldır.',
    section: '3 bölüm',
    shortName: 'UG',
    gradientColors: [
      Colors.amber.shade300.withOpacity(0.25),
      Colors.orange.shade700.withOpacity(0.25),
    ],
  ),

  Story(
    name: 'Moby Dick',
    category: 'Macera',
    type: 'Dünya',
    color: Colors.blueGrey,
    time: '10 dk',
    story:
        'İsmail adlı genç bir denizci, Kaptan Ahab’ın yönettiği balina avı gemisine katılır. Kaptan Ahab’ın amacı, kendisine zarar veren dev beyaz balina Moby Dick’i bulmaktır. Yolculuk boyunca denizciler doğayla, korkularıyla ve kendi tutkularıyla mücadele eder. Moby Dick, insanın hırsının ve doğa karşısındaki gücünün sorgulandığı büyük bir macera romanıdır.',
    section: '5 bölüm',
    shortName: 'MD',
    gradientColors: [
      Color(0xFF607D8B).withOpacity(0.25),
      Color(0xFF263238).withOpacity(0.25),
    ],
  ),
];
