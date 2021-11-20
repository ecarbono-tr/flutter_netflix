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
      margin: const EdgeInsets.only(top: 50.0),
      child: SliverFab(
        expandedHeight: 90.0,
        topScalingEdge: 80,
        floatingPosition: const FloatingPosition(
          right: 16.0,
        ),
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 60.0,
            toolbarHeight: 50,
            pinned: true,
            elevation: 0.1,
            title: Container(
              margin: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                ],
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              //title: const Text("SliverFab Example"),
              background: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(bottom: 26, left: 26, right: 26),
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
        floatingWidget: const SizedBox(),
      ),
    );
  }
}
