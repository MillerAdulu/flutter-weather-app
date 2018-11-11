import 'package:flutter/material.dart';
import '../models/current_weather.dart';

class CurrentWeather extends StatelessWidget{
  
  final List<CurrentWeatherModel> currentWeather;

  CurrentWeather(this.currentWeather);

  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 50.0,bottom: 20.0,left: 20.0,right: 20.0),
      padding: EdgeInsets.all(20.0),
      child:Center(
        child:Column(
        children: <Widget>[
        Text(     
          currentWeather.length == 0 ? '' : '  i${currentWeather[0].location}',    
          style: TextStyle(
            color: Colors.white,
            fontFamily: "sanserif",
            fontWeight: FontWeight.w300,
            fontSize: 20.0,  
          ),
        ),
        Container(margin: EdgeInsets.all(20.0),),
        Text(     
              currentWeather.length == 0 ? '' : ' ${currentWeather[0].temp}°',    
              style: TextStyle(
                color: Colors.white,
                fontFamily: "sanserif",
                fontWeight: FontWeight.w200,
                fontSize: 100.0,  
              ),
            ),
          Container(margin: EdgeInsets.all(20.0),),
          Text(
             currentWeather.length == 0 ? '' : ' ${currentWeather[0].description}',      
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,  
              ),
            ),
          Container(margin: EdgeInsets.all(10.0),),
          Text(
             currentWeather.length == 0 ? '' : ' ${currentWeather[0].altitude} m',
            style:TextStyle(
              color: Colors.white,
              fontSize: 16.0
            )
          )
        ],
      ),
      ) 
    );
  }
}