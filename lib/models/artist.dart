import 'package:flutter/foundation.dart';

import './album.dart';

class Artist {
  String name;
  List<Album> albums;

  Artist({
    @required this.name,
    @required this.albums,
  });
}
