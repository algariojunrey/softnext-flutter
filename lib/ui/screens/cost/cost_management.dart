import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:restaurant/models/cost_item.dart';
import 'package:restaurant/ui/widgets/app_drawer.dart';
import 'package:restaurant/ui/widgets/cost_item.dart';

class CostManagement extends StatefulWidget {
  const CostManagement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CostManagementState();
}

class _CostManagementState extends State<CostManagement> {
  String _delivery_note = "Text";
  String _text2 = "000-000 Text";
  int _total_amount = 1599;

  List<CostItemModel> _costItems = [];

  @override
  void initState() {
    super.initState();

    _costItems.add(CostItemModel(
        name: "えび", quantity: 10, unitPrice: 1500, subTotal: 100));
    _costItems.add(CostItemModel(
        name: "たまご麺", quantity: 2, unitPrice: 1500, subTotal: 100));
    _costItems.add(CostItemModel(
        name: "たまご", quantity: 1, unitPrice: 1500, subTotal: 100));
    _costItems.add(CostItemModel(
        name: "豚肉", quantity: 20, unitPrice: 1500, subTotal: 100));
    _costItems.add(CostItemModel(
        name: "豚背骨", quantity: 20, unitPrice: 1500, subTotal: 100));
    _costItems.add(CostItemModel(
        name: "メンマ", quantity: 1, unitPrice: 1500, subTotal: 100));

    // for (int i = 0; i < 10; i++) {
    //   _costItems.add(
    //     CostItemModel(
    //         name: "えび $i", quantity: i + 1, unitPrice: i + 100, subTotal: 100),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return AppDrawer(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Text("企業ロゴ"),
                Expanded(
                  child: Center(
                    child: Text("原価入力"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                const SizedBox(width: 16),
                const Text("納品書"),
                const SizedBox(width: 32),
                Text("$_delivery_note様"),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                const SizedBox(width: 16),
                const Text("〒"),
                Text("$_text2様"),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                const SizedBox(width: 16),
                const Text("金額 : "),
                Text("$_total_amount円"),
              ],
            ),
            const SizedBox(height: 20.0),
            // Search box
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "検索",
              ),
            ),
            const SizedBox(height: 16.0),
            // Products list
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: _costItems.length,
              itemBuilder: (context, position) {
                return CostItem(
                  itemName: _costItems[position].name,
                  quantiy: _costItems[position].quantity,
                  unitPrice: _costItems[position].unitPrice,
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text("原価管理へ"),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text("保存して次の入力"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
