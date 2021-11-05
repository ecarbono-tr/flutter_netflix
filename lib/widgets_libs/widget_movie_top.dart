import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';

class MovieTop extends StatelessWidget {
  final Movie movie;
  const MovieTop({required this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            child: Image.network(
              'https://es.web.img2.acsta.net/pictures/14/06/12/15/44/475686.jpg',
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Text(hercules.desc.toString(),
                textAlign: TextAlign.justify, style: style),
          ),
        ),
      ],
    );
  }
}
