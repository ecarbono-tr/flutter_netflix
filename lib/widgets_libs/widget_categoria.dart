import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/constants.dart';

class MyCategoriaScreen extends StatefulWidget {
  const MyCategoriaScreen({Key? key}) : super(key: key);

  @override
  _MyCategoriaScreenState createState() => _MyCategoriaScreenState();
}

class _MyCategoriaScreenState extends State<MyCategoriaScreen> {
  List items = [
    'Mi Lista',
    'Acción',
    'Drama',
    'Documentales',
    'Aventuras',
    'Ciencia Ficción',
    'Comedia',
    'No- Ficción',
    'Fantasía',
    'Musical',
    'Suspense',
    'Terror',
    'Religiosas',
    'Futuristas',
    'Policíacas',
    'Crimen',
    'Bélicas',
    'Históricas',
    'Deportivas',
    'Western'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.85),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...items
                          .map((value) => GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    value,
                                    style: styleCategoriaContent,
                                  ),
                                ),
                              ))
                          .toList(),
                    ],
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Buscar',
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
