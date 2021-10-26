import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  // CircleImage has 2 parameters - imageProvider and imageRadius
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20,
  }) : super(key: key);

  // imageRadius and imageProvider property declarations
  final double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    // return the CircleAvatar widget with a white color
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      // smaller CircleAvatar inside with image
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
