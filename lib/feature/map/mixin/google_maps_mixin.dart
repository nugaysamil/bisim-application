// ignore_for_file: public_member_api_docs, eol_at_end_of_file

import 'package:bisim_app/product/model/station_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_flutter/google_maps_flutter.dart';

mixin GoogleMapsMixin<T extends StatefulWidget> on State<T> {
  late GoogleMapController mapController;
  String _mapStyle = '';
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  final LatLng startPoint = const LatLng(38.4, 27.1667);

  Set<Marker> markers = {};

  Future<void> loadMapStyle() async {
    _mapStyle = await rootBundle.loadString('assets/maptheme/map_style.json');
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(_mapStyle);
  }

  Future<void> addMarkers(List<Station> stationList) async {
    await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      'assets/icon/Marker.png',
    ).then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );

    setState(() {
      markers.clear();
      for (final station in stationList) {
        markers.add(
          Marker(
            markerId: MarkerId(station.id),
            position: LatLng(station.latitude, station.longitude),
            icon: markerIcon,
            infoWindow: InfoWindow(title: station.name),
          ),
        );
      }
    });

  }

  void zoomIn() {
    mapController.animateCamera(CameraUpdate.zoomIn());
  }

  void zoomOut() {
    mapController.animateCamera(CameraUpdate.zoomOut());
  }
}

