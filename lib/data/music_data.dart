import '../models/album.dart';
import '../models/artist.dart';

final musicData = [
  Artist(
    name: 'Queen',
    albums: [
      Album(
        name: 'Jazz',
        albumImagePath: 'assets/images/jazz.jpg',
        songs: [
          'Mustapha',
          'Fat Bottomed Girl',
          'Jealosy',
          'Don\'t Stop Me Now',
          'Bicycle Race',
          'In Only Seven Days',
          'Dreamer\'s Ball',
        ],
      ),
      Album(
        name: 'A Night At The Opera',
        albumImagePath: 'assets/images/aNightAtTheOpera.jpg',
        songs: [
          'Bohemian Rhapsody',
          'Lazing On A Sunday Afternoon',
          '\'39',
          'Sweet Lady',
          'Love Of My Life',
          'Seaside Rendezvous',
          'The Prophet\'s Song',
          'Good Company',
          'God Save The Queen',
          'You\'re My Best Friend',
          'I\'m In Love With My Car',
          'Death On Two Legs',
        ],
      ),
    ],
  ),
  Artist(
    name: 'Radiohead',
    albums: [
      Album(
        name: 'The Bends',
        albumImagePath: 'assets/images/theBends.png',
        songs: [
          'High And Dry',
          'Just',
          'My Iron Lung',
        ],
      ),
    ],
  ),
  Artist(
    name: 'Metallica',
    albums: [
      Album(
        name: 'Master Of Puppets',
        albumImagePath: 'assets/images/masterOfPuppets.jpg',
        songs: [
          'Master Of Puppets',
          'Battery',
          'Orion',
          'Disposable Heroes',
        ],
      ),
    ],
  ),
  Artist(
    name: 'Green Day',
    albums: [
      Album(
        name: 'American Idiot',
        albumImagePath: 'assets/images/americanIdiot.jpg',
        songs: [
          'American Idiot',
          'Jesus Of Suburbia',
          'Holiday',
          'Are We The Waiting',
        ],
      ),
    ],
  ),
  Artist(
    name: 'System Of A Down',
    albums: [
      Album(
        name: 'Toxicity',
        albumImagePath: 'assets/images/toxicity.jpg',
        songs: [
          'Toxicity',
          'ATWA',
          'Forest',
          'Chop Suey!',
        ],
      ),
    ],
  ),
  Artist(
    name: 'Nirvana',
    albums: [
      Album(
        name: 'Nervermind',
        albumImagePath: 'assets/images/nevermind.jpg',
        songs: [
          'Smells Like Teen Spirit',
          'In Bloom',
          'Lithium',
          'Something In The Way',
          'Breed',
          'Come As You Are',
        ],
      ),
    ],
  ),
  Artist(
    name: 'The Beatles',
    albums: [
      Album(
        name: 'Abbey Road',
        albumImagePath: 'assets/images/abbeyRoad.jpg',
        songs: [
          'Come Together',
          'Something',
          'Here Comes The Sun',
        ],
      ),
    ],
  ),
];
