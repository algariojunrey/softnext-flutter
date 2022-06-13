import 'package:flutter/material.dart';

import '../widgets/home_menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 90,
            ),
            const Center(
              child: Text(
                "ホーム画面",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                HomeMenu("原価管理"),
                SizedBox(width: 16),
                HomeMenu("労務管理"),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                HomeMenu("顧客管理"),
                SizedBox(width: 16),
                HomeMenu("オペレーション管理"),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                HomeMenu("売上管理"),
                SizedBox(width: 16),
                HomeMenu("経営管理"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
