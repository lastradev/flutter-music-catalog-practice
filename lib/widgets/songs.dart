import 'package:flutter/material.dart';

class Songs extends StatelessWidget {
  final List<String> songsList;

  Songs(this.songsList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: songsList.map(
        (song) {
          return Text(
            song,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          );
        },
      ).toList(),
    );
  }
}
