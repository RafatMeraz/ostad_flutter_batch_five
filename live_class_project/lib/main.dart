import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _initializeMapSomething() async {
    print(await _mapController.getVisibleRegion());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
          _initializeMapSomething();
        },
        zoomControlsEnabled: true,
        initialCameraPosition: CameraPosition(
          target: LatLng(23.744287065983727, 90.3841376276092),
          zoom: 16,
          bearing: 90,
          tilt: 90
        ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        onTap: (LatLng latLng) {
          print('tapped on map : $latLng');
        },
        onLongPress: (LatLng latLng) {
          print('on Long press : $latLng');
        },
        compassEnabled: true,
        zoomGesturesEnabled: true,
        // liteModeEnabled: false,
        markers: {
          Marker(
            markerId: MarkerId('my-new-restaurant'),
            position: LatLng(23.742443588311794, 90.3894929587841),
            infoWindow: InfoWindow(title: 'My new restaurant'),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueOrange),
            draggable: true,
            flat: true
          ),
          Marker(
            markerId: MarkerId('my-new-club'),
            position: LatLng(23.74183162848683, 90.389587841928),
            infoWindow: InfoWindow(title: 'My new restaurant'),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
            draggable: true,
            flat: true
          ),
          Marker(
            markerId: MarkerId('my-new-hotel'),
            position: LatLng(23.741736489038175, 90.3900247067213),
            infoWindow: InfoWindow(title: 'My new restaurant'),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRose),
            draggable: true,
            flat: false
          )
        },
        circles: {
          Circle(
              circleId: CircleId('my-new-restaurant'),
              center: LatLng(23.742443588311794, 90.3894929587841),
            radius: 50,
            strokeColor: Colors.orange,
            strokeWidth: 3,
            fillColor: Colors.orange.withOpacity(0.15)
          ),
          Circle(
              circleId: CircleId('my-new-restaurant-for-programm'),
              center: LatLng(23.74122027959254, 90.38924183696508),
            radius: 50,
            strokeColor: Colors.blue,
            strokeWidth: 3,
            fillColor: Colors.lightGreen.withOpacity(0.15),
            onTap: () {
                print('Tapped on circle');
            },
            consumeTapEvents: true
          ),
        },
        polylines: {
          Polyline(
            polylineId: PolylineId('ploy-one'),
            color: Colors.blueAccent,
            width: 5,
            points: [
              LatLng(23.740341307078115, 90.38882710039616),
              LatLng(23.740324734215356, 90.39145734161139),
              LatLng(23.742737598077895, 90.39118140935898),
              LatLng(23.740341307078115, 90.38882710039616),
            ]
          )
        },
        polygons: {
          Polygon(
            polygonId: PolygonId('random-id'),
            fillColor: Colors.orange.withOpacity(0.4),
            strokeColor: Colors.orange,
            strokeWidth: 3,
            holes: [], // TODO: explore it by yourself
            points: [
              LatLng(23.739841971936272, 90.3895965591073),
              LatLng(23.73569345718147, 90.38991339504719),
              LatLng(23.737665990064247, 90.39202865213156),
              LatLng(23.739380384460528, 90.38338992744684),
              LatLng(23.736511078293713, 90.38516487926245)
            ]
          )
        },
      ),
    );
  }
}
