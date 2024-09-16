import 'package:flutter/material.dart';
import "package:cached_network_image/cached_network_image.dart";

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          width: 350,
          height: 500,
          child: CachedNetworkImage(
              imageUrl:
                  "https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2024/04/Goku-png-sin-fondo.png?w=1000&ssl=1",
              placeholder: (_, __) => Center(
                    child: const CircularProgressIndicator(),
                  ),
              errorWidget: (_, __, error) => const Icon(Icons.error)),
        ),
      ),
    );
  }
}
