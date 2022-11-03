import 'package:flutter/material.dart';

class infoItem extends StatelessWidget {
  infoItem(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        // Text("20.6M"),
        // Text("followers"),
      ],
    );
  }
}
