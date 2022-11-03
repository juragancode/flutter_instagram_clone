import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.orange,
                Colors.pink.shade300,
                Colors.purple.shade400,
                Colors.blueAccent.shade700,
              ],
            ),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ],
    );
  }
}
