// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_netflix/widgets_libs/widget_inicio.dart';
import 'package:sliver_fab/sliver_fab.dart';

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
    return Container(
      color: Colors.black,
      child: SliverFab(
        expandedHeight: 95.9,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 100.0,
            toolbarHeight: 95.9,
            pinned: true,
            automaticallyImplyLeading: true,
            title: Container(
              margin: const EdgeInsets.only(top: 40, left: 30),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    ...titulos
                        .map(
                          (e) => TextButton(
                            onPressed: () {},
                            child: Text(
                              e,
                              style: const TextStyle(
                                  fontSize: 16,
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
                          value: item.toString(),
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
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 26, left: 26, right: 26, top: 8),
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
            return const SliverToBoxAdapter(child: InicioNetflix());
          }),
        ],
        floatingWidget: const Text(''),
      ),
    );
  }
}
