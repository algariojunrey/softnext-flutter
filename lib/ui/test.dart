import 'package:flutter/material.dart';
import 'package:restaurant/models/cost_item.dart';
import 'package:restaurant/ui/widgets/app_drawer.dart';
import 'package:restaurant/ui/widgets/cost_item.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<CostItemModel> _costItems = [];
  String _delivery_note = "Text";
  String _text2 = "000-000 Text";
  int _total_amount = 1599;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      setState(() {
        _costItems.add(
          CostItemModel(
              name: "えび $i",
              quantity: i + 1,
              unitPrice: i + 100,
              subTotal: 100),
        );
      });
    }
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
            const SizedBox(height: 20),
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
