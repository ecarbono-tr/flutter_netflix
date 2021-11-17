import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:flutter_netflix/widgets_libs/widget_gps.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  late BuildContext sheetcontext;

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
                          ? GestureDetector(
                              onTap: () {
                                modalbottomsheet(
                                    context: context,
                                    informacion: containerMovie[index]);
                              },
                              child: Container(
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

  modalbottomsheet(
      {required BuildContext context, required Movie informacion}) {
    String valroes = (informacion.temporadas != null)
        ? informacion.temporadas.toString() + ' Temporadas'
        : '';
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey.shade800,
      builder: (context) {
        sheetcontext = context;
        return StatefulBuilder(builder: (BuildContext context, setState) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, right: 8),
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: NetworkImage('${informacion.imgPortada}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                informacion.titulo.toString(),
                                style: style.copyWith(fontSize: 18),
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () => Navigator.pop(sheetcontext),
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: Text(
                              informacion.year.toString() +
                                  ' ' +
                                  informacion.edad.toString() +
                                  ' ' +
                                  valroes,
                              style: style.copyWith(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            child: Text(
                              informacion.desc.toString(),
                              style: style.copyWith(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            alignment: Alignment.center,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  MyAppGps(informacion: informacion,),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              (Icons.play_arrow),
                              color: Colors.black,
                            ),
                            Text(
                              'Ver',
                              style: style.copyWith(
                                  color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            alignment: Alignment.center,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon((Icons.download), color: Colors.white),
                            Text(
                              'Descargar',
                              style: style,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            alignment: Alignment.center,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              (Icons.play_arrow_sharp),
                              color: Colors.white,
                            ),
                            Text(
                              'Avance',
                              style: style,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          );
        });
      },
    );
  }

  TextStyle style = TextStyle(
    fontSize: 10,
    color: Colors.white,
  );
}
