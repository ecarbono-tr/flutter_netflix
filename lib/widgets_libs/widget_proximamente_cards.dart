import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';

class MyCardsProximamente extends StatefulWidget {
  const MyCardsProximamente({Key? key}) : super(key: key);

  @override
  State<MyCardsProximamente> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCardsProximamente> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...containerMovieProximamente.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: NetworkImage('${e.imgPortada}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
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
