

import 'package:flutter/material.dart';

class ZephyrMissionContens {
  final String title;
  final String image;
  final String desc;

  ZephyrMissionContens({
    required this.title,
    required this.image,
    required this.desc,
  });
}
List<ZephyrMissionContens> contents = [
  ZephyrMissionContens(
    title: "H E D E F L E R ",
    image: "assets/zephyr.png",
    desc: "Zephyr gezegeninin atmosferik katmanlarını analiz edin \n \n Gizemli bulut yapılarını inceleyin. \n \n Atmosferdeki bilinmeyen elementleri tespit edin.",
  ),
  ZephyrMissionContens(
    title: "G E R E K S İ N İ M L E R",
    image: "assets/zephyr1.png",
    desc: "Atmosferik örnek toplama aracı. \n \n Uzaktan algılama cihazları. \n \n  Atmosfer analizi için laboratuvar ekipmanları.",
  ),
  ZephyrMissionContens(
    title: "Z O R L U K L A R",
    image: "assets/zephyr3.png",
    desc: "Yoğun bulut tabakası, görsel gözlemleri zorlaştırıyor. \n  \n Sert hava koşulları ve potansiyel olarak tehlikeli yüzey aktiviteleri.",
  ),
];
