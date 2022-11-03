import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 4,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade600,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video_outlined),
          label: "Reels",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "Shop",
        ),
        BottomNavigationBarItem(
          // https://picsum.photos/200/300
          icon: Icon(Icons.account_circle_outlined),
          label: "Profile",
        ),
      ],
    );
  }
}
