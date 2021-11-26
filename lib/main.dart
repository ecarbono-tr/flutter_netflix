import 'package:appcenter_analytics/appcenter_analytics.dart';
import 'package:appcenter_crashes/appcenter_crashes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/constants.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:flutter_netflix/widgets/widget_container.dart';
import 'package:flutter_netflix/widgets_libs/widget_download.dart';
import 'package:flutter_netflix/widgets_libs/widget_proximamente.dart';
import 'package:appcenter/appcenter.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  void initAppCenter() async {
    final ios = defaultTargetPlatform == TargetPlatform.iOS;
    var app_secret = ios ? "" : "f72db8e7-d7f8-46b4-9a39-a66b5a790a79";

    await AppCenter.start(
        app_secret, [AppCenterAnalytics.id, AppCenterCrashes.id]);
  }

  int index = 0;
  String titulo = '';
  final Movie movie = hercules;

  //Tres contenidos para los 3 botones  BottomNavigationBar
  static List<Widget> listaWidget = [
    const ScreanContainer(),
    const ProximamenteNetflix(),
    const MyDownload(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: valorTheme,
      home: Scaffold(
        appBar: (index > 0)
            ? AppBar(
                backgroundColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Text(titulo)),
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
            fontSize: 14,
            color: Colors.white,
          ),
          unselectedItemColor: Colors.white,
          iconSize: 15,
          selectedFontSize: 15,
          unselectedFontSize: 14,
          currentIndex: index,
          onTap: (i) {
            setState(() {
              index = i;
              if (i == 1) {
                titulo = 'Próximamente';
              } else if (i == 2) {
                titulo = 'Descargas';
              }
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
