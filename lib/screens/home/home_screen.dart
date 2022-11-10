import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/constants.dart';
import 'package:hello_world/screens/home/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomeBody(),
      bottomNavigationBar: buildBottomAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => {}),
        backgroundColor: accentColor,
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                      // padding: const EdgeInsets.only(right: 40),
                      foregroundColor: textColor,
                      fixedSize: const Size(80, 60)),
                  child: const Icon(Icons.home),
                ),
                TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                      foregroundColor: textColor,
                      fixedSize: const Size(80, 60)),
                  child: const Icon(Icons.star_border),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                      // padding: const EdgeInsets.only(right: 40),
                      foregroundColor: textColor,
                      fixedSize: const Size(80, 60)),
                  child: const Icon(Icons.newspaper_outlined),
                ),
                TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                      foregroundColor: textColor,
                      fixedSize: const Size(80, 60)),
                  child: const Icon(Icons.person),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: const Icon(Icons.analytics_outlined),
      title: const Text('Stonks'),
      backgroundColor: accentColor,
      actions: <Widget>[
        IconButton(onPressed: () => {}, icon: const Icon(Icons.arrow_back_ios)),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
      ],
    );
  }
}
