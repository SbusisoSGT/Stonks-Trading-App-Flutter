import 'package:flutter/material.dart';
import 'package:hello_world/constants.dart';
import 'package:hello_world/screens/home/components/tags.dart';

class MainNewsCard extends StatelessWidget {
  const MainNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.network(
              'https://cdn.benzinga.com/files/images/story/2022/Lordstown_Motors_EV.jpeg?width=1200&height=800&fit=crop',
              height: 250,
              width: 400,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reuters',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: accentColor,
                    fontSize: 17.0),
              ),
              const Text(
                'U.S. equity funds lure inflows for third straight week',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Container(
                child: const Text(
                  'U.S. equity funds continued to gain inflows for a third straight week in the week to ',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const NewsTags(),
            ],
          )
        ],
      ),
    );
  }
}
