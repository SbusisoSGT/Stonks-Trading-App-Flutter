import 'package:flutter/material.dart';
import 'package:hello_world/constants.dart';
import 'package:hello_world/screens/home/components/main_news_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: ListView(
        clipBehavior: Clip.antiAlias,
        children: const <Widget>[
          Text(
            'Trending News',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 30.0,
            ),
          ),
          MainNewsCard(),
        ],
      ),
    );
  }
}
