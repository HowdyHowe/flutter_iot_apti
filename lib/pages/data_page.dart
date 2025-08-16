import 'dart:convert';
import 'package:control_iot_app/dataclass/data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class DataPage extends StatelessWidget {
  DataPage({super.key});

  List<DataApi> data = [];

  Future ambilData() async {
    var test = await http.get(Uri.http('10.0.2.2:5000', 'reqdatapage', {"format": "json"}),);
    var jsondecode = jsonDecode(test.body);
    print(jsondecode);
    final res = DataApi(
        humd: jsondecode['humd'],
        temp: jsondecode['temp'],
        aqi: jsondecode['aqi']);
    data.add(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: ambilData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Container(
                          width: 400,
                          height: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Air Quality: ${data[index].aqi}AQI',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 20),
                              ),
                              Text(
                                'Humidity: ${data[index].humd}%',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 20),
                              ),
                              Text(
                                'Temperature: ${data[index].temp}°C',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
