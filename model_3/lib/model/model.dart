class item_Model {
  final String title;
  final String dis;
  final double price;
   int quantaty;

  item_Model({
    required this.title,
    required this.dis,
    required this.price,
     this.quantaty = 1,
  });
}
