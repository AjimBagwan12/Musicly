import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


import '../models/song_model.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70.0),
                image: DecorationImage(
                  image: AssetImage(
                    song.coverUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.15,
              margin: const EdgeInsets.only(bottom: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white.withOpacity(0.8),
              ),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  const Icon(
                    Icons.play_circle,
                    color: Colors.deepPurple,
                  ),

                ],
              ),

            )
          ],

        ),
      ),
    );
  }
}

