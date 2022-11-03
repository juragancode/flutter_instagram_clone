import 'package:flutter/material.dart';
import '../widgets/ProfilePicture.dart';
import '../widgets/InfoItem.dart';
import '../widgets/StoryItem.dart';
import '../widgets/TabItem.dart';
import '../widgets/BottomItem.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "extragram",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoItem("Post", "2,083"),
                      infoItem("Followers", "20.6M"),
                      infoItem("Following", "4,999"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "extragram",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "Extragram is Instagram at its best!. Extragram is a web client of the popular photo sharing iPhone app ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "@extragram #extragram",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("one", "https://picsum.photos/151/251"),
                  StoryItem("two", "https://picsum.photos/152/252"),
                  StoryItem("three", "https://picsum.photos/153/253"),
                  StoryItem("four", "https://picsum.photos/154/254"),
                  StoryItem("five", "https://picsum.photos/155/255"),
                  StoryItem("six", "https://picsum.photos/156/256"),
                  StoryItem("seven", "https://picsum.photos/157/257"),
                  StoryItem("eight", "https://picsum.photos/158/258"),
                  StoryItem("nine", "https://picsum.photos/159/259"),
                  StoryItem("ten", "https://picsum.photos/160/260"),
                  StoryItem("eleven ", "https://picsum.photos/161/261"),
                  StoryItem("twelve", "https://picsum.photos/162/262"),
                  StoryItem("thirteen", "https://picsum.photos/163/263"),
                  StoryItem("fourteen", "https://picsum.photos/164/264"),
                ],
              ),
            ),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(true, Icons.grid_on_sharp),
              TabItem(false, Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 30,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/201/301",
              // "https://picsum.photos/id/${index + 2}/201/301",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomItem(),
    );
  }
}
