import 'package:flutter/material.dart';
import 'package:hello_world/constants.dart';

class NewsTags extends StatelessWidget {
  const NewsTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [tag('Technology'), tag('Economy'), tag('Finance')],
    );
  }
}

Container tag(String name) {
  return Container(
    margin: const EdgeInsets.only(right: 10, top: 5.0),
    child: OutlinedButton(
      onPressed: (() => {}),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: accentColor),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          ),
        ),
      ),
      child: Text(
        name,
        style: const TextStyle(color: accentColor),
      ),
    ),
  );
}
