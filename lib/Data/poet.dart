import 'package:flutter/material.dart';
import 'package:lirica/Models/poet.dart';

List<Poet> poets = [
  Poet(
    name: 'Nazım Hikmet',
    shortName: 'NH',
    description: 'Modern Türk Şairi,',
    category: 'Türk',
    job: 'Şair',
    about:
        'Nazım Hikmet, Türk edebiyatının en önemli şairlerinden ve düşünce insanlarından biridir. Asıl adı Nazım Hikmet Ran’dır. 1902 yılında Selanik’te doğmuş, 1963 yılında Moskova’da hayatını kaybetmiştir. Şiirlerinde insan sevgisini, özgürlüğü, aşkı, barışı, emekçi halkın yaşamını ve memleket özlemini işlemiş; Türk şiirine hem biçim hem içerik açısından büyük yenilikler kazandırmıştır. Özellikle serbest ölçüyü kullanması ve konuşma diline yakın bir anlatım tercih etmesi sayesinde modern Türk şiirinin öncülerinden biri kabul edilir. Onun şiirleri sadece edebi yönüyle değil, taşıdığı güçlü duygu ve düşüncelerle de dikkat çeker. Nazım Hikmet kültürlü bir ailede yetişmiş, küçük yaşlardan itibaren sanata ve edebiyata ilgi duymuştur. Eğitim hayatının bir bölümünü Heybeliada Bahriye Mektebi’nde geçirmiştir. Genç yaşta şiir yazmaya başlamış, Kurtuluş Savaşı döneminde Anadolu’ya giderek milli mücadeleye destek vermiştir. Daha sonra eğitim amacıyla Moskova’ya gitmiş ve burada sosyalist düşüncelerle tanışmıştır. Bu dönem onun hem dünya görüşünü hem de sanat anlayışını büyük ölçüde etkilemiştir. Şiirlerinde toplumcu gerçekçi bir anlayışı benimsemiş, halkın sorunlarını ve eşitsizlikleri eserlerine yansıtmıştır.Siyasi düşünceleri nedeniyle yaşamı boyunca birçok kez soruşturma geçirmiş, tutuklanmış ve uzun yıllar hapishanede kalmıştır. Ancak tüm baskılara rağmen yazmayı hiç bırakmamıştır. Hapishanede yazdığı eserlerde özgürlük özlemi, umut, insan sevgisi ve memleket hasreti çok güçlü şekilde hissedilir. Özellikle “Memleketimden İnsan Manzaraları” adlı eseri, Türk toplumunun farklı kesimlerinden insanların yaşamını anlatan en önemli yapıtlarından biri kabul edilir. Bunun yanında “Kuvâyi Milliye Destanı”, “835 Satır” ve “Sevdalı Bulut” gibi eserleri de oldukça ünlüdür.1951 yılında Türkiye’den ayrılmak zorunda kalan Nazım Hikmet uzun süre sürgünde yaşamış ve hayatının son yıllarını Moskova’da geçirmiştir. Ölümünden sonra eserleri daha geniş kitlelere ulaşmış, hem Türkiye’de hem dünyada büyük saygı görmüştür. Şiirleri birçok dile çevrilmiş, eserleri tiyatroya, müziğe ve sinemaya uyarlanmıştır. Günümüzde hâlâ en çok okunan Türk şairlerinden biri olan Nazım Hikmet, edebiyatımızda özgürlüğün, insan sevgisinin ve umut duygusunun simgelerinden biri olarak kabul edilir.',
    products: [
      'Kuvâyi Milliye Destanı',
      'Memleketimden İnsan Manzaraları',
      '835 Satır',
      'Saat 21-22 Şiirleri',
      'Taranta Babu’ya Mektuplar',
      'Sevdalı Bulut',
      'Yaşamak Güzel Şey Be Kardeşim',
      'Ferhad ile Şirin',
      'Yusuf ile Menofis',
      'Bir Ölü Evi',
    ],
    words: [
      'Yaşamak bir ağaç gibi tek ve hür ve bir orman gibi kardeşçesine...',
    ],
    birth:
        '15 Ocak 1902’de Selanik’te doğmuş, 3 Haziran 1963’te Moskova’da hayatını kaybetmiştir.',
    color: Colors.blue.shade300,
  ),
  
  Poet(
    name: 'Orhan Pamuk',
    shortName: 'OP',
    description: 'Çağdaş Türk Yazarı,',
    category: 'Türk',
    job: 'Yazar / Nobel Ödüllü',
    about:
        'Orhan Pamuk, Türkiye\'nin en ünlü çağdaş yazarlarından biridir ve 2006 yılında Türk yazarlar arasında ilk kez Nobel Edebiyat Ödülü\'nü kazanmıştır. 1952 yılında İstanbul\'da doğmuş olan Pamuk, İstanbul\'u merkez alan yapıtlarıyla dünya edebiyatında önemli bir yere sahiptir. Şiir ve resimle başlayan sanatsal yolculuğu sonrasında, romancılığa yönelmiştir. "Cevdet Bey ve Oğulları" ile başlayan yazarlık kariyeri, "Beyaz Kale", "Kara Kitap", "Yeni Hayat" ve "Benim Adım Kırmızı" gibi yapıtlarla devam etmiş ve her bir eseri edebiyat dünyasında büyük etki yaratmıştır. Pamuk\'un yazılarında İstanbul, tarih, kimlik, sanat ve aşk temaları öne çıkar. "Benim Adım Kırmızı" eseri Türk edebiyatının uluslararası alanda en çok tanınan ve ödüllendirilen yapıtlarından biri olmuştur. Yazarın deneme ve makalelerinde kültür, sanat, siyaset ve toplum konuları hakkında derinlemesine analizler bulunmaktadır. Nobel Ödülü\'nü kazanmasının ardından Pamuk, uluslararası sahada daha da tanınan bir figür haline gelmiştir. Istanbul Üniversitesi\'nde Komparatif Edebiyat Bölümü\'nde profesör olarak görev yapan Pamuk, aynı zamanda kültür ve sanat alanında aktif bir sözcüdür.',
    products: [
      'Cevdet Bey ve Oğulları',
      'Beyaz Kale',
      'Kara Kitap',
      'Yeni Hayat',
      'Benim Adım Kırmızı',
      'Kar',
      'Masumiyet Müzesi',
      'Bir Engel\'in Çatışması',
      'Geceler ve Günler',
      'Kırmızı Saçlı Kadın',
    ],
    words: [
      'Yazarlık, sevgi gibidir. Eğer yapabiliyorsanız başka bir şey yapmayın.',
      'Romanlar yazarken ben, şeyleri çok daha derinden anlamaya başlıyorum.',
    ],
    birth:
        '7 Haziran 1952\'de İstanbul\'da doğmuştur. Türk edebiyatının öncü isimlerinden biridir.',
    color: Colors.red.shade300,
  ),
];
