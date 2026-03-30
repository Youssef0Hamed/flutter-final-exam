class ItemModel {
  final String title;
  final String img;
  final String price;
  final String? suptitle;
  final String? size;

  ItemModel({
    required this.title,
    required this.img,
    required this.price,
    this.suptitle,
    this.size,
  });
}
