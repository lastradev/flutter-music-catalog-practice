import 'package:flutter/foundation.dart';

class Album {
  String name;
  String albumImagePath;
  List<String> songs;

  Album({
    @required this.name,
    @required this.albumImagePath,
    @required this.songs,
  });
}
