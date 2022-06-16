// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/models/cost_item.dart';
import 'package:restaurant/ui/widgets/app_drawer.dart';
import 'package:restaurant/ui/widgets/cost_item.dart';

import '../../widgets/date_picker.dart';

class CostManagement extends StatefulWidget {
  const CostManagement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CostManagementState();
}

class _CostManagementState extends State<CostManagement> {
  final String _deliveryNote = "Text";
  final String _text2 = "000-000 Text";
  final int _totalAmount = 1599;
  DateTime _date = DateTime.now();

  final List<CostItemModel> _costItems = [];
  String dropdownValue = 'One';
  List<String> itemOptions = ["えび", "たまご麺", "たまご", "豚肉", "豚背骨", "メンマ"];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _costItems.add(CostItemModel(
        name: "えび",
        quantity: 10,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: itemOptions));
    _costItems.add(CostItemModel(
        name: "たまご麺",
        quantity: 2,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: itemOptions));
    _costItems.add(CostItemModel(
        name: "たまご",
        quantity: 1,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: itemOptions));
    _costItems.add(CostItemModel(
        name: "豚肉",
        quantity: 20,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: itemOptions));
    _costItems.add(CostItemModel(
        name: "豚背骨",
        quantity: 20,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: itemOptions));
    _costItems.add(CostItemModel(
        name: "メンマ",
        quantity: 1,
        unitPrice: 1500,
        subTotal: 100,
        itemOptions: itemOptions));
  }

  @override
  Widget build(BuildContext context) {
    return AppDrawer(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                Text("$_deliveryNote様"),
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
                Text("$_totalAmount円"),
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
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.all(0.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        "日付",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: DatePicker(
                          initialDate: _date,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                          locale: const Locale("ja", ""),
                          child: Text(DateFormat("yyyy/MM/dd").format(_date)),
                          onChanged: (DateTime date) {
                            setState(() {
                              _date = date;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                  itemOptions: _costItems[position].itemOptions,
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text("原価管理へ"),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: _isLoading
                  ? Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(left: 30),
                      padding: const EdgeInsets.all(0.0),
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    )
                  : Container(),
              label: Padding(
                padding: const EdgeInsets.all(12),
                child: _isLoading ? const Text("") : const Text("保存して次の入力"),
              ),
              onPressed: () {
                setState(() {
                  _isLoading = !_isLoading;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
