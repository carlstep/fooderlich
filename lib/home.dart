import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1 - a StatefulWidget
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7 keeps a track of which tab is selected
  int _selectedIndex = 0;

  // 8 defines a List of widgets for each tab to display.
  static List<Widget> pages = <Widget>[
    const Card1(), // reference Card1
    const Card2(), // reference Card2
    const Card3(), // reference Card3
  ];

  // 9 -
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: pages[_selectedIndex],
      // 4 - defines a BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        // 5 - sets the selection color of an item when tapped
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // 10 tells the bottom nav bar which item to highlight
        currentIndex: _selectedIndex,
        // 11 calls OnItemTapped, sets the state with correct index color
        onTap: _onItemTapped,
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