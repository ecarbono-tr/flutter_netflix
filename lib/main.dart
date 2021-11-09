// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:flutter_netflix/widgets/widget_container.dart';
import 'package:flutter_netflix/widgets_libs/widget_proximamente.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => const FisrtScrean(),
      },
    );
  }
}

class FisrtScrean extends StatefulWidget {
  const FisrtScrean({Key? key}) : super(key: key);

  @override
  State<FisrtScrean> createState() => _FisrtScreanState();
}

class _FisrtScreanState extends State<FisrtScrean> {
  int index = 0;
  final Movie movie = hercules;

  //Tres contenidos para los 3 botones  BottomNavigationBar
  static List<Widget> listaWidget = [
    const ScreanContainer(),
    const ProximamenteNetflix(),
    const Text('Text 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (index == 1)
            ? AppBar(
                backgroundColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Expanded(child: Text('Proximamente')),
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
              )
            : null,
        backgroundColor: Colors.black,
        body: listaWidget.elementAt(index),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedLabelStyle: const TextStyle(
            color: Colors.white,
          ),
          unselectedItemColor: Colors.white,
          iconSize: 20,
          selectedFontSize: 20,
          unselectedFontSize: 16,
          currentIndex: index,
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle),
              label: 'Proximamente',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Descargas',
            ),
          ],
        ),
      ),
    );
  }
}
