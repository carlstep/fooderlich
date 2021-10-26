import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // 1 defines the string variables to display on the card
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Ray Wenderlich';

  // 2 overrides the stateless widget build method
  @override
  Widget build(BuildContext context) {
    // 3 a container, centered.
    return Center(
      //
      child: Container(
        child: Stack(
          children: [
            Text(
            category,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
          Text(
            title,
            style: FooderlichTheme.darkTextTheme.headline5,
          ),
            Text(
              description,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Text(
              chef,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
          ],
        ),
        // 1 applies the padding to the box
        padding: const EdgeInsets.all(16.0),
        // 2 constrains the containers size to w350 and h450
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        // 3 applies BoxDecoration, describes how to draw the box
        decoration: const BoxDecoration(
          // 4 sets up DecorationImage, tells the box to paint an image
          image: DecorationImage(
    // 5 AssetImage tells which image to grab from the assets folder
          image: AssetImage('assets/mag1.png'),
          // 6 fit the image to cover the box
          fit: BoxFit.cover,
        ),
        // 7 apply corner radius to image
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    ),
    );
  }
}