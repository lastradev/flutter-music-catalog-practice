import 'package:flutter/material.dart';

import '../models/artist.dart';
import './artist_card.dart';

class MusicCatalog extends StatelessWidget {
  final List<Artist> _musicCatalog;

  MusicCatalog(this._musicCatalog);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: _musicCatalog.map(
          (catalog) {
            return ArtistCard(catalog.name, catalog.albums);
          },
        ).toList(),
      ),
    );
  }
}
