// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliver_fab/sliver_fab.dart';
import 'package:sliverbar_with_card/sliverbar_with_card.dart';

class ScreanContainer extends StatefulWidget {
  const ScreanContainer({Key? key}) : super(key: key);

  @override
  State<ScreanContainer> createState() => _ScreanContainerState();
}

List titulos = ['Series', 'Peliculas'];
String valorInicial = '';
List items = ['Drama', 'Documentales'];

class _ScreanContainerState extends State<ScreanContainer> {
  Color colorTheme = const Color(0xff0069a2);
  bool favorito = false;
  bool expandText = false;
  @override
  Widget build(BuildContext context) {
    return SliverFab(
      expandedHeight: 90.0,
      slivers: <Widget>[
        SliverAppBar(
          
          backgroundColor: Colors.transparent,
          expandedHeight: 90.0,
          toolbarHeight: 70,
          pinned: true,
          title: Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 30, left: 30),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ...titulos
                          .map(
                            (e) => TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Series',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                      DropdownButton(
                        underline: const SizedBox(),
                        hint: const Text(
                          "Categorias",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        items: items.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            enabled: true,
                          );
                        }).toList(),
                      ),
                    ]),
              ],
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            //title: const Text("SliverFab Example"),
            background: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 30,
                        child: Image.asset(
                          "assets/img/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Divider(),
                      Row(
                        children: [
                          IconButton(
                            tooltip: 'Buscar',
                            iconSize: 30,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage('assets/img/netflix_avatar.png'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverLayoutBuilder(
            builder: (BuildContext context, SliverConstraints constraints) {
          return SliverToBoxAdapter(
              child: Container(
            color: Colors.amber,
            height: 1000,
          ));
        }),
      ],
      floatingWidget: const Text(''),
    );
  }
}
