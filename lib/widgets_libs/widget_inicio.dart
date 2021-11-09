import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:flutter_netflix/widgets_libs/widget_inicio_cards.dart';

class InicioNetflix extends StatefulWidget {
  const InicioNetflix({Key? key}) : super(key: key);

  @override
  State<InicioNetflix> createState() => _InicioNetflixState();
}

var rng = Random();
int rngMovie = rng.nextInt(containerMovie.length);
@override
void initState() {
  initState();
}

class _InicioNetflixState extends State<InicioNetflix> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 600,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage('${containerMovie[rngMovie].img}'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black.withOpacity(0.3),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Text(
                            containerMovie[rngMovie].titulo.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            containerMovie[rngMovie]
                                .targs!
                                .join(' º ')
                                .toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 70,
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      rngMovie =
                                          rng.nextInt(containerMovie.length);
                                    });
                                  },
                                  icon: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Flexible(
                                          child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      )),
                                      Text(
                                        'Mi lista',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size.infinite,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Flexible(
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text('Reproducir',
                                        style: TextStyle(color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: 70,
                              child: IconButton(
                                  iconSize: 25,
                                  onPressed: () {},
                                  icon: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Flexible(
                                        child: Icon(
                                          Icons.info,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text('Información',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 50, left: 15),
              color: Colors.black,
              child: const MyCards()),
        ],
      ),
    );
  }
}
