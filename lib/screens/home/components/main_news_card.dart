import 'package:flutter/material.dart';
import 'package:hello_world/constants.dart';
import 'package:hello_world/screens/home/components/tags.dart';

class MainNewsCard extends StatelessWidget {
  const MainNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0), //add border radius
            child: Image.network(
              'https://cdn.benzinga.com/files/images/story/2022/Lordstown_Motors_EV.jpeg?width=1200&height=800&fit=crop',
              height: 210,
              width: 400,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'Reuters',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: accentColor,
                    fontSize: 17.0),
              ),
              Text(
                'U.S. equity funds lure inflows for third straight week',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  style: TextStyle(height: 1.9),
                  'U.S. equity funds continued to gain inflows for a third straight week in the week to Nov. 2, helped by expectations that the Federal Reserve would slow the pace of its interest rate hikes soon.',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              NewsTags(),
            ],
          )
        ],
      ),
    );
  }
}
