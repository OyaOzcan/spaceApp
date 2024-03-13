

import 'package:flutter/material.dart';

class EpsilonMissonContents {
  final String title;
  final String image;
  final String desc;

  EpsilonMissonContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}
List<EpsilonMissonContents> epsilonContents = [
  EpsilonMissonContents(
    title: "H E D E F L E R ",
    image: "assets/epsilon.png",
    desc: " Epsilon III gezegeninde bulunan antik yapıların yerini belirleyin ve bu yapıları dikkatlice inceleyin. \n \n Antik kalıntılardan kültürel artefaktlar toplayın. Bu eserler, geçmiş uygarlıkların yaşam tarzı, inançları ve teknolojileri hakkında önemli bilgiler sunabilir.\n \n Antik kalıntılarda bulunan yazıtları çözümleyin. Bu yazıtlar, gezegenin tarihine ve antik uygarlığın kaderine dair ipuçları içerebilir.",
  ),
  EpsilonMissonContents(
    title: "G E R E K S İ N İ M L E R",
    image: "assets/epsilon2.png",
    desc: "Kazı ve araştırma için özel ekipman. \n \n Yazıtları çözümleyebilecek yazılımlar. \n \n Koruyucu giysi ve ekipman.",
  ),
  EpsilonMissonContents(
    title: "Z O R L U K L A R",
    image: "assets/epsilon3.png",
    desc: "Antik kalıntılar, zamanla tehlikeli tuzaklarla veya koruyucu mekanizmalarla donatılmış olabilir. Dikkatli olun. \n \n  Antik kalıntıların korunması gerekmektedir. Araştırmalar sırasında yapıya zarar vermekten kaçının. \n \n Epsilon III'ün sert hava koşulları, araştırma ve keşif çalışmalarını zorlaştırabilir. Uygun donanımlara sahip olmak önemlidir.",
  ),
];