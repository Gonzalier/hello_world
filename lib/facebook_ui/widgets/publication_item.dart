import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/facebook_ui/widgets/avatar.dart';
import 'package:hello_world/models/publication.dart';
import 'package:timeago/timeago.dart' as timeago;

class PublicationItem extends StatelessWidget {
  final Publication publication;
  const PublicationItem({super.key, required this.publication});

  @override
  Widget build(BuildContext context) {
    const paddding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: paddding,
            child: Row(
              children: [
                const Avatar(
                  size: 38,
                  asset: "assests/users/1.jpg",
                ),
                Text(publication.user.userName),
                const SizedBox(
                  width: 10,
                ),
                const Spacer(),
                Text(
                  timeago.format(publication.cratedAt),
                ),
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: publication.imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: paddding.copyWith(top: 15),
            child: Text(
              publication.title,
            ),
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 30,
                child: SvgPicture.asset(
                  'assests/emojis/like.svg',
                ),
              ),
              Container(
                height: 40,
                width: 30,
                child: SvgPicture.asset(
                  'assests/emojis/like.svg',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
