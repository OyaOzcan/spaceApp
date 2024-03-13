

import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}
List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Galaksiye Hoş Geldin, Kaşif! ",
    image: "assets/new_file.riv",
    desc: "Sen, CRSTY100 Uzay Üssü'nün en yeni üyesisin - Epsilon Yıldız Sistemi'nin keşfedilmemiş sırlarını çözmeye adanmış bir maceracı. Burası, bilim ve keşifle dolu bir dünya; ve senin katkılarınla, evrenin en büyük gizemlerini aydınlatacağız.",
  ),
  OnboardingContents(
    title: "Evrenin Gizemlerine Yolculuk",
    image: "assets/hero_use_case.riv",
    desc: "Görevlerin arasında gizemli gezegenleri keşfetmek, antik uygarlıkların izlerini sürmek ve uzaylı medeniyetlerle dostluk kurmak var. Her adımda, bilgi birikimimizi genişletecek ve insanlığın evrende barış ve anlayış içinde yer almasını sağlayacak cesur adımlar atacaksın.",
  ),
  OnboardingContents(
    title: "Yıldızlar Arası Serüven",
    image: "assets/web.riv",
    desc: "Hazır mısın bu büyük maceraya atılmaya? Görevlerini seç, uzayın derinliklerine dal ve evrenin sırlarını bizimle birlikte keşfet. Bu yolculukta seni nelerin beklediğini görmek için sabırsızlanıyoruz. Şimdi, yıldızların arasında kendi hikayeni yazma zamanı!",
  ),
];