import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu(this.text) : super();

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(height: 70),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // minimumSize: const Size.fromHeight(50.0),
            primary: Colors.black,
          ),
          onPressed: () {
            print("asdasdasd");
          },
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
