import 'package:flutter/material.dart';
import 'package:restaurant/ui/screens/cost/cost_management.dart';

import '../widgets/app_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AppDrawer(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
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
              children: <Widget>[
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 100),
                    child: ElevatedButton(
                      child: const Text(
                        "原価管理",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CostManagement(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 100),
                    child: ElevatedButton(
                      child: const Text(
                        "労務管理",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Test(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "顧客管理",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "オペレーション管理",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "売上管理",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "経営管理",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
