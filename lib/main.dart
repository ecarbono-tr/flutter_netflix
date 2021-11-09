// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:flutter_netflix/widgets/widget_container.dart';
import 'package:flutter_netflix/widgets/widget_peliculas.dart';

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
    ScreanPeli(movie: hercules),
    const Text('Text 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.transparent,
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
    );
  }
}
