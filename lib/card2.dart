import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      // sets the Container and its properties inside Center widget
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // sets up the Column widget with children
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage(
                'assets/author_katz.jpeg',
              ),
            ),
            // Expanded fills the remaining available space
            Expanded(
                // apply Stack to position texts on top of each other
                child: Stack(
              children: [
                // position first Text at the bottom-right
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
                // position second Text from bottom-left and rotate
                Positioned(
                  bottom: 70,
                  left: 5,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Smoothies',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
