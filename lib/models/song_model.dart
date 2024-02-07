import 'package:flutter/material.dart';

class Song {
  late final String title;
  late final String description;
  late final String url;
  late final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });


  static List<Song> songs = [
    Song(
        title: 'Abrars ',
        description: 'Abrars Entry',
        url: 'assets/music/abrars.mp3',
        coverUrl: 'assets/images/abrars.jpg'
    ),

    Song(
      title: 'Apana Banale',
      description: 'Apana Banale Piya',
      url: 'assets/music/apana_banale.mp3', // Use the asset path
      coverUrl: 'assets/images/apana_banale.jpg',
    ),
    Song(
        title: 'Arjan Vally',
        description: 'Arjan vally',
        url: 'assets/music/arjan_valy.mp3',
        coverUrl: 'assets/images/arjan_valy.jpg'
    ),
    Song(
        title: 'Besharam',
        description: 'Pathan',
        url: 'assets/music/besharam.mp3',
        coverUrl: 'assets/images/besharam.jpg'
    ),
    Song(
        title: 'Bhai Ka...',
        description: 'Birthday',
        url: 'assets/music/birthday.mp3',
        coverUrl: 'assets/images/birthday.jpg'
    ),
    Song(
        title: 'Chaleya',
        description: 'chaleya song',
        url: 'assets/music/chaleya.mp3',
        coverUrl: 'assets/images/chaleya.jpg'
    ),
    Song(
        title: 'Machayenge',
        description: 'Machayege',
        url: 'assets/music/firse_machyenge.mp3',
        coverUrl: 'assets/images/firse_machayege.jpg'
    ),
    Song(
        title: 'Gadi',
        description: 'gadi leke',
        url: 'assets/music/gadi_leke.mp3',
        coverUrl: 'assets/images/gadi_lake.jpg'
    ),
    Song(
        title: 'Gandhi Money',
        description: 'money',
        url: 'assets/music/gandhi_money.mp3',
        coverUrl: 'assets/images/gandhi_money.jpg'
    ),
    Song(
        title: 'Hua Main',
        description: 'Chuaa tune',
        url: 'assets/music/hua_main.mp3',
        coverUrl: 'assets/images/hua_main.jpg'
    ),
    Song(
        title: 'Hukum',
        description: 'Hukum',
        url: 'assets/music/hukum.mp3',
        coverUrl: 'assets/images/hukum.jpg'
    ),
    Song(
        title: 'Aaya Jhund',
        description: 'jhund',
        url: 'assets/music/jhund_hai.mp3',
        coverUrl: 'assets/images/jhund_hai.jpg'
    ),
    Song(
        title: 'Khuja Mat',
        description: 'Mc Stan',
        url: 'assets/music/khuja_mat.mp3',
        coverUrl: 'assets/images/khuja_mat.jpg'
    ),
    Song(
        title: 'Kohinoor',
        description: 'Divine rap',
        url: 'assets/music/kohinoor.mp3',
        coverUrl: 'assets/images/kohinoor.jpg'
    ),
    Song(
        title: 'Leke Prabhu',
        description: 'Tiger-3',
        url: 'assets/music/leke_prabhu.mp3',
        coverUrl: 'assets/images/leke_prabhu.jpg'
    ),
    Song(
        title: 'LEO',
        description: 'Title track',
        url: 'assets/music/leo.mp3',
        coverUrl: 'assets/images/leo.jpg'
    ),
    Song(
        title: 'Lut Put',
        description: 'Dunki',
        url: 'assets/music/lut_put.mp3',
        coverUrl: 'assets/images/lutput_gaya.jpg'
    ),
    Song(
        title: 'Nusta Paisa',
        description: 'Mc Stan',
        url: 'assets/music/nusta_paisa.mp3',
        coverUrl: 'assets/images/nusta_paisa.jpg'
    ),
    Song(
        title: 'O Mahi',
        description: 'Dunki',
        url: 'assets/music/O_mahi.mp3',
        coverUrl: 'assets/images/o_mahi.jpg'
    ),
    Song(
        title: 'Pathan',
        description: 'Pathan',
        url: 'assets/music/pathan.mp3',
        coverUrl: 'assets/images/pathan.jpg'
    ),
    Song(
        title: 'Ramiya',
        description: 'Jawan',
        url: 'assets/music/ramaiya.mp3',
        coverUrl: 'assets/images/ramaiya.jpg'
    ),
    Song(
        title: 'Salar',
        description: 'Title track',
        url: 'assets/music/salar.mp3',
        coverUrl: 'assets/images/salar.jpg'
    ),
    Song(
        title: 'Tadipar',
        description: 'Mc Stan',
        url: 'assets/music/tadipar.mp3',
        coverUrl: 'assets/images/tadipar.jpg'
    ),
    Song(
        title: 'Tum Se',
        description: 'tum se',
        url: 'assets/music/Tum_se.mp3',
        coverUrl: 'assets/images/tum_se.jpg'
    ),
    Song(
        title: 'Zinda Banda',
        description: 'Jawan',
        url: 'assets/music/zinda_banda.mp3',
        coverUrl: 'assets/images/zinda_banda.jpg'
    ),

  ];

}