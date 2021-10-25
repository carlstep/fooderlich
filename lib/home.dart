import 'package:flutter/material.dart';

// 1 - a StatefulWidget
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          //2 - updated AppBar theme
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: Center(
        child: Text('Let\'s get cooking 👩‍🍳',
        // 3
          style: Theme.of(context).textTheme.headline1),
      ),
      // 4 - defines a BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        // 5 - sets the selection color of an item when tapped
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        // 6 - defined three bottom navigation tab bar items in a list.
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
          label: 'Card2',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
          label: 'Card3',
          )
        ],
      ),
    );
  }

}