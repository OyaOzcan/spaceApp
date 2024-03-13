

import 'package:flutter/material.dart';

class CustodiansMissionContens {
  final String title;
  final String image;
  final String desc;

  CustodiansMissionContens({
    required this.title,
    required this.image,
    required this.desc,
  });
}
List<CustodiansMissionContens> custodianContents = [
  CustodiansMissionContens(
    title: "H E D E F L E R ",
    image: "assets/custondians.png",
    desc: "Uzaylı ırkla iletişim kurmak için dil ve iletişim protokolleri geliştirmek.\n\nKültürel değişim ve bilgi paylaşımı için toplantılar düzenlemek.\n\nİnsanlık ve The Custodians arasında barışçıl ve yapıcı bir ilişki kurmak.\n \nOrtak ilgi alanları ve işbirliği fırsatlarını keşfetmek.",
  ),
  CustodiansMissionContens(
    title: "G E R E K S İ N İ M L E R",
    image: "assets/custondians3.png",
    desc: "Gelişmiş Dil Çeviri Teknolojileri \n \n Diplomat ve Arabulucu Desteği \n \n Ortak İlgi Alanları Araştırması",
  ),
  CustodiansMissionContens(
    title: "Z O R L U K L A R",
    image: "assets/custondians4.png",
    desc: " İletişimde dil ve kültürel farklılıkların üstesinden gelmek. \n \n Karşılıklı güven ve anlayış inşa etmek.",
  ),
];
