import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        constraints: BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("assets/mag5.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/profile.jpg")),
                ),
              ),
              title: Text(
                "Minhajul Islam",
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              subtitle: Text(
                "Smoothie connoisseur",
                style: FooderlichTheme.lightTextTheme.headline3,
              ),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                iconSize: 30,
                color: Colors.grey[400],
                onPressed: () {
                  const snackBar = SnackBar(content: Text("Favorite Pressed"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 5),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 70,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Smoothies",
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 10,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
