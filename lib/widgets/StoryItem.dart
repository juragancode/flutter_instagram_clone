import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title, this.URL);

  final String title;
  final String URL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.grey.shade300,
                ),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.grey.shade400,
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(URL),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
