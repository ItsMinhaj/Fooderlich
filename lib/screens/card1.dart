import 'package:flutter/material.dart';

import '../fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String category = 'Editor\'s Choice';
    final String title = 'The Art of Dough';
    final String description = 'Learn to make the perfect bread.';
    final String chef = 'Minhajul';

    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("assets/mag1.png"), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                category,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline6,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 8,
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 8,
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
