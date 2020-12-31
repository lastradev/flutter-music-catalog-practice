import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  final String albumImgPath;
  final Function nextAlbumFunction;

  Albums(this.albumImgPath, this.nextAlbumFunction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          padding: EdgeInsets.only(top: 10),
          child: Image.asset(
            albumImgPath,
          ),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: nextAlbumFunction,
          color: Color.fromRGBO(73, 242, 194, 1),
        ),
      ],
    );
  }
}
