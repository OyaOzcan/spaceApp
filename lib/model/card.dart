class MyCard {
  final String front;
  final String back;
  final String asset;
  bool isFlipped;

  MyCard({required this.front, required this.back, required this.asset, this.isFlipped = false, });
}