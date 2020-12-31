import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import './data/music_data.dart';
import './widgets/music_catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(16, 23, 38, 1),
        fontFamily: 'Mulish',
      ),
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  _launchURL() async {
    const url = 'https://github.com/oscaragl13';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Music Catalog'),
        actions: [
          Icon(
            Icons.music_note,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.thumb_up,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: _launchURL,
        backgroundColor: Color.fromRGBO(67, 217, 189, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(height: 60),
        color: Theme.of(context).primaryColor,
      ),
      backgroundColor: Color.fromRGBO(109, 128, 166, 1),
      body: MusicCatalog(musicData),
    );
  }
}
