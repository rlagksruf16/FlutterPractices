import 'package:flutter/material.dart';
import 'package:weather_app/screens/location_geolocation.dart';
import 'package:weather_app/services/networking.dart';


const apiKey = '090633700f5495a2cf93c2b506826ef9';

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

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();

    

  } 


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    );
  }

}
