import 'package:flutter/material.dart';

import '../services/location.dart';
import '../services/networking.dart';

const apiKey = 'e3fecc1b5824ce4aa39fa597fc3d53f5';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
