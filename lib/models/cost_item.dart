class CostItemModel {
  String name;
  int quantity;
  int unitPrice;
  int subTotal;
  List<String> itemOptions;

  CostItemModel({
    required this.name,
    required this.quantity,
    required this.unitPrice,
    required this.subTotal,
    required this.itemOptions,
  });
}
