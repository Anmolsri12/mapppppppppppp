import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


void main() {
  runApp(MaterialApp(
    home:MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  var markers=<Marker>[
    Marker(
  width: 20.0,
  height: 30.0,
  point: LatLng(41.876,-51.875),
  builder: (ctx)=>Icon(Icons.pin_drop)
  ),
   Marker(
  width: 20.0,
  height: 30.0,
  point: LatLng(41.876,-51.875),
  builder: (ctx)=>Icon(Icons.pin_drop)
  ),
  Marker(
  width: 20.0,
  height: 30.0,
  point: LatLng(41.876,-51.875),
  builder: (ctx)=>Icon(Icons.pin_drop)
  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("map"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children:[Flexible(
              child: FlutterMap(
                options:MapOptions(
                  center:LatLng(41.345, 87.895),
                  zoom:10.0),
                  layers: [TileLayerOptions(urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a','b','c'],
                  ),
                  MarkerLayerOptions(markers: markers)
                  ],
         ),
         )
         ]
      )
      )
    ),
    );
  }
}