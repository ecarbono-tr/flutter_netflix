// ignore_for_file: must_call_super, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_netflix/api/video_items.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyCardsProximamente extends StatefulWidget {
  const MyCardsProximamente({Key? key}) : super(key: key);

  @override
  State<MyCardsProximamente> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCardsProximamente> {
  

  @override
  void initState() {
    super.initState();
    
  }

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...containerMovieProximamente.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoItems(videoPlayerController: e.video.toString()),
                const Divider(),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          'Estreno el ' + e.year.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        e.titulo.toString(),
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          e.desc.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          e.targs!.join(' . ').toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }

  
}
