import 'package:flutter/material.dart';
import 'package:hello_world/facebook_ui/widgets/story_item.dart';
import 'package:hello_world/models/story.dart';

final _stories = [
  Story(
    bg: "assests/wallpapers/1.jpeg",
    avatar: "assests/users/2.jpg",
    username: "Laura",
  ),
  Story(
    bg: "assests/wallpapers/2.jpeg",
    avatar: "assests/users/3.jpg",
    username: "Maria",
  ),
  Story(
    bg: "assests/wallpapers/3.jpeg",
    avatar: "assests/users/4.jpg",
    username: "Juliana",
  ),
  Story(
    bg: "assests/wallpapers/4.jpeg",
    avatar: "assests/users/5.jpg",
    username: "Marta",
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (BuildContext _, int index) {
          final story = _stories[index];
          return StoryItem(
            story: story,
            isFirst: index == 0 ? true : false,
          );
        },
      ),
    );
  }
}
