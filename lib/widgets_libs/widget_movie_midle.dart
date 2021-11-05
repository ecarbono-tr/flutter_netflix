import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';

class MovieMidle extends StatelessWidget {
  final Movie? movie;
  const MovieMidle({this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const BorderSide borderSide = BorderSide(color: Colors.black);
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(right: 16, left: 16),
      decoration: const BoxDecoration(
          border: Border(top: borderSide, bottom: borderSide)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Año: ' + movie!.year.toString()),
          Text('Rating: ' + movie!.rating!),
          Text('Tiempo: ' + movie!.time.toString()),
          Expanded(
            child: Text(
              movie!.targs!.join(', '),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
