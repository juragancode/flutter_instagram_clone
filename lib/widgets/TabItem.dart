import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  TabItem(this.active, this.icon);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: active == true ? Colors.black : Colors.white,
                width: 1,
              ),
            ),
          ),
          child: Icon(icon),
        ),
      ),
    );
  }
}
