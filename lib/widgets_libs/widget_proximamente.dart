

import 'package:flutter/material.dart';
import 'package:flutter_netflix/widgets_libs/widget_proximamente_cards.dart';

class ProximamenteNetflix extends StatefulWidget {
  const ProximamenteNetflix({Key? key}) : super(key: key);

  @override
  State<ProximamenteNetflix> createState() => _InicioNetflixState();
}

@override
void initState() {
  initState();
}

class _InicioNetflixState extends State<ProximamenteNetflix> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 50, left: 15),
              color: Colors.black,
              child: const MyCardsProximamente()),
        ],
      ),
    );
  }
}
