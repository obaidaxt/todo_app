import 'package:flutter/material.dart';

class Todocard extends StatelessWidget {
  const Todocard({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: const Color.fromRGBO(209, 224, 224, 0.2),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('data ddd'),
            Icon(
              Icons.close,
              size: 27,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
