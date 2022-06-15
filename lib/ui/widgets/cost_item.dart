import 'package:flutter/material.dart';
import 'package:restaurant/ui/widgets/select_widget.dart';

class CostItem extends StatelessWidget {
  final String itemName;
  final int quantiy;
  final int unitPrice;

  const CostItem(
      {Key? key,
      required this.itemName,
      required this.quantiy,
      required this.unitPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "品名",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(itemName),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "数量",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      quantiy.toString(),
                    ),
                    const SizedBox(width: 8.0),
                    const Select(
                      options: ["mg", "g", "kg"],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "単価",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("${unitPrice.toString()}円"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "金額",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("${(quantiy * unitPrice).toString()}円"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
