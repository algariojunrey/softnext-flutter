import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo(this.text) : super();

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 20),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
