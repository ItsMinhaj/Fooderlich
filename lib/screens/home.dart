import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/screens/card1.dart';
import 'package:fooderlich/screens/card2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    Card1(),
    Card2(),
    Container(color: Colors.blue),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return Scaffold(
      appBar: AppBar(
        title: Text("Fooderlich", style: theme.textTheme.headline6),
        centerTitle: true,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: "Card2",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: "Card3",
          ),
        ],
        onTap: _onTapItem,
      ),
    );
  }
}
