class ItemModel {
  final String img;
  final String title;
  final String? leveltype;
  final String? des;
  final double? price;
  final String? couch;
  final String? time;
  final String? datetime;

  ItemModel({
    required this.img,
    required this.title,
    this.leveltype,
    this.des = "this is des",
    this.time,
    this.price = 25,
    this.couch,
    this.datetime,
  });
}
