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
                                    style: styleCategoria.copyWith(
                                        fontSize: 20,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ))
                          .toList(),
                    ],
                  ),
                ),
              ),
              ClipOval(
                child: Material(
                  color: Colors.white, // Button color
                  child: InkWell(
                    splashColor: Colors.grey, // Splash color
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const SizedBox(
                      width: 56,
                      height: 56,
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
