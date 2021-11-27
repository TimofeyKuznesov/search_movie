import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewContainer extends StatefulWidget {
  @override
  _MapViewContainerState createState() => _MapViewContainerState();
}

class _MapViewContainerState extends State<MapViewContainer> {
  final Completer<GoogleMapController> _controller = Completer();

  LatLng currentMarker = const LatLng(56.31207079202705, 44.02252022176981);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _updateMarker(LatLng latlng) {
    setState(() {
      currentMarker = latlng;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        onTap: _updateMarker,
        markers: {
          Marker(
            draggable: true,
            position: currentMarker,
            markerId: const MarkerId("selected position"),
          ),
          Marker(
            markerId: const MarkerId("Epam NN"),
            position: const LatLng(56.31398769507709, 44.029597230255604),
            infoWindow: InfoWindow(
              title: "Epam NN",
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text("Office EPAM in Nizniy Novgorod"),
                  );
                },
              ),
            ),
          )
        },
        initialCameraPosition: CameraPosition(
          target: currentMarker,
          zoom: 11.0,
        ),
      ),
    );
  }
}
