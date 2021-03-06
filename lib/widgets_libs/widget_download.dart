import 'package:flutter/material.dart';

class MyDownload extends StatefulWidget {
  const MyDownload({Key? key}) : super(key: key);

  @override
  _MyDownloadState createState() => _MyDownloadState();
}

class _MyDownloadState extends State<MyDownload> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          Row(
            children: const [
              SizedBox(
                width: 50,
                child: Icon(
                  Icons.settings,
                ),
              ),
              Text('Autodescargar')
            ],
          ),
          const Divider(),
          const ListTile(
            title: Text('Presentación de Descargas para ti\n'),
            subtitle: Text(
                'Descargaremos una seleccion personalizada de peliculas y series para que nunca te falte algo para ver en el telefono.'),
          ),
          Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
