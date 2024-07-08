// ignore_for_file: public_member_api_docs

import 'package:bisim_app/feature/custom_search_bar.dart';
import 'package:bisim_app/feature/map/mixin/google_maps_mixin.dart';
import 'package:bisim_app/product/service/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatefulWidget {
  @override
  State<GoogleMaps> createState() => GoogleMapsState();
}

class GoogleMapsState extends State<GoogleMaps> with GoogleMapsMixin {
  bool _markersAdded = false;

  @override
  void initState() {
    super.initState();
    loadMapStyle();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final networkDataAsyncValue = ref.watch(networkDataProvider);

        return networkDataAsyncValue.when(
          data: (network) {
            if (!_markersAdded) {
              addMarkers(network.stations).then((_) {
                setState(() {
                  _markersAdded = true;
                });
              });
            }
            return buildMap();
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (err, stack) {
            return Center(child: Text('Error: $err'));
          },
        );
      },
    );
  }

  Widget buildMap() {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: onMapCreated,
          initialCameraPosition: CameraPosition(
            target: startPoint,
            zoom: 12,
          ),
          markers: markers,
        ),
        
        CustomSearchBar(),

   
      ],
    );
  }
}
