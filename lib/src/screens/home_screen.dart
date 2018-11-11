import 'package:flutter/material.dart';

import '../widgets/current_weather.dart';
import '../widgets/hourly_forecast.dart';
import '../models/current_weather.dart';

class HomeScreen extends StatelessWidget{

  List<CurrentWeatherModel> currentWeather;
  HomeScreen(this.currentWeather);

  Widget build(BuildContext context){
    print(currentWeather);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
          child: Container(
            child:Column(
              children: <Widget>[
                CurrentWeather(currentWeather),
                Container(margin: EdgeInsets.only(top:20.0),),
                HourlyForecast(),
              ],
            )
          ),
        ),
      );
    },
    );
    

  }
}