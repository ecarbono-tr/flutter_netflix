import 'package:flutter/material.dart';

class MovieDirector extends StatelessWidget {
  final String? label;
  final List<String>? movie;
  const MovieDirector({this.label, this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50, width: 80, child: Text(label!)),
        SizedBox(height: 50, width: 150, child: Text(movie!.join(', ')))
      ],
    );
  }
}
