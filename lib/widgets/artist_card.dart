import 'package:flutter/material.dart';

import '../models/album.dart';
import './albums.dart';
import './songs.dart';

class ArtistCard extends StatefulWidget {
  final String artistName;
  final List<Album> albums;

  ArtistCard(this.artistName, this.albums);

  @override
  _ArtistCardState createState() => _ArtistCardState();
}

class _ArtistCardState extends State<ArtistCard> {
  var _albumIndex = 0;

  void _nextAlbum() {
    setState(() {
      _albumIndex < widget.albums.length - 1 ? _albumIndex++ : _albumIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(46, 61, 89, 1),
      elevation: 3,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              widget.artistName,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Albums(
              widget.albums[_albumIndex].albumImagePath,
              _nextAlbum,
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(109, 128, 166, 1),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Songs(
                  widget.albums[_albumIndex].songs,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
