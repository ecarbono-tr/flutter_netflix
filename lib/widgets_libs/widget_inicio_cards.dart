import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...columnCategorias.map((e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                e,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const Divider(),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: containerMovie.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (e == containerMovie[index].categMenu)
                          ? Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  alignment: Alignment.topCenter,
                                  image: NetworkImage(
                                      '${containerMovie[index].imgPortada}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : const SizedBox();
                    }),
              ),
              const Divider(),
            ],
          );
        }).toList(),
      ],
    );
  }
}
