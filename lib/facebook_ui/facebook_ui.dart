import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/facebook_ui/widgets/circle_button.dart';
import 'package:hello_world/facebook_ui/widgets/publication_item.dart';
import 'package:hello_world/facebook_ui/widgets/quick_acctions.dart';
import 'package:hello_world/facebook_ui/widgets/stories.dart';
import 'package:hello_world/facebook_ui/widgets/what_is_on_you_mid.dart';
import 'package:faker/faker.dart';
import 'package:hello_world/models/publication.dart';
import 'dart:ui' as ui;

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final ramdom = faker.randomGenerator;
      const reactions = Reactions.values;
      final reactionsIndex = ramdom.integer(reactions.length - 1);

      final publication = Publication(
        user: User(
          avatar: faker.image.loremPicsum(),
          userName: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        cratedAt: faker.date.dateTime(),
        imageUrl: faker.image.loremPicsum(),
        commentsCount: ramdom.integer(50000),
        sharesCount: ramdom.integer(50000),
        currenUserReactions: reactions[reactionsIndex],
      );
      publications.add(publication);
    }
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          "assests/logos/facebook.svg",
          color: Colors.blueAccent,
          width: 150,
        ),
        actions: const [
          CircleButton(
              color: Colors.white,
              iconData: Icons.search,
              BoxDecorationColor: Colors.grey),
          SizedBox(
            width: 15,
          ),
          CircleButton(
              color: Colors.white,
              iconData: Icons.notifications,
              BoxDecorationColor: ui.Color(0xffFE7574)),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Colors.white,
            iconData: Icons.people_rounded,
            BoxDecorationColor: ui.Color(0xff7BBAFF),
            showBadge: true,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
              color: Colors.white,
              iconData: Icons.message_rounded,
              BoxDecorationColor: ui.Color(0xff1C86E4)),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const WhatIsOnYourMind(),
          const SizedBox(height: 25),
          const QuickAcctions(),
          const SizedBox(height: 25),
          const Stories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: publications.length,
            itemBuilder: (BuildContext _, int index) => PublicationItem(
              publication: publications[index],
            ),
          ),
        ],
      ),
    );
  }
}
