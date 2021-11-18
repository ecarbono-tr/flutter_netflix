// ignore_for_file: prefer_final_fields, unused_field, must_be_immutable

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/movie.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

class MyAppGps extends StatefulWidget {
  Movie informacion;
  MyAppGps({required this.informacion, Key? key}) : super(key: key);

  @override
  State<MyAppGps> createState() => _MyAppGpsState();
}

class _MyAppGpsState extends State<MyAppGps> {
  @override
  void initState() {
    super.initState();
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
  }

  late BitmapDescriptor pinLocationIcon;

  Future<Set<Marker>> setCustomMapPin() async {
    List<Marker> markers = <Marker>[];
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 0.1, size: Size(24, 24)),
      'assets/img/logoN.png',
    );
    markers.add(
      Marker(
        draggable: true,
        markerId: const MarkerId("1"),
        position: const LatLng(10.9852822, -74.7915201),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
          title: 'Aqui fue grabado la pelicula',
          snippet: widget.informacion.titulo.toString(),
        ),
        onTap: () {},
      ),
    );

    return markers.toSet();
  }

  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(10.9852822, -74.7915201),
    zoom: 16,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              tooltip: 'Back',
              iconSize: 24,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text('GPS'),
        ),
        body: FutureBuilder(
          future: setCustomMapPin(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            Set<Marker> mark = snapshot.data;
            if (!snapshot.hasData) {
              return const Center(child: Text('Cargando Mapa...'));
            } else {
              return GoogleMap(
                mapType: MapType.normal,
                markers: mark,
                myLocationEnabled: true,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _goToTheLake,
          label: Text('Inicio'),
          icon: Icon(Icons.home),
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      _kGooglePlex,
    ));
  }
}
