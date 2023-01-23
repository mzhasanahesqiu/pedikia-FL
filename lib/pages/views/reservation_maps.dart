import 'package:flutter/material.dart';
import "package:flutter_map/flutter_map.dart";
import "package:latlong2/latlong.dart" as latLng;
import "package:http/http.dart" as http;
import "dart:convert" as convert;
import 'package:flutter_map/src/layer/tile_layer/tile_layer.dart';
import 'package:pedikia/pages/views/widgets/therapist_card.dart';
import 'package:pedikia/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final String apiKey = "0XVEgGwagCUhKnrKy4omc4AJy56lMfF3";
  Widget build(BuildContext context) {
    final pointCoordinate = new latLng.LatLng(-6.333821997340533, 107.30469244615264);
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height:40,
          width:MediaQuery.of(context).size.width * 0.95,
          child:FloatingActionButton(
            child: Text('Lanjutkan',
            style: TextStyle(fontSize: 18, color: Colors.white)
            ),
            backgroundColor: primaryColor,//child widget inside this button
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/sign-in');
              //task to execute when this button is pressed
            },
          ),
        ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: FlutterMap(
                  options: new MapOptions(center: pointCoordinate, zoom: 13.0),
                  children: [
                    new TileLayer(
                      urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
                          "{z}/{x}/{y}.png?key={apiKey}",
                      additionalOptions: {"apiKey": apiKey},
                    ),
                  new MarkerLayer(
                      markers: [
                        new Marker(
                          width: 80.0,
                          height: 80.0,
                          point: pointCoordinate,
                          builder: (BuildContext context) => Icon(
                              Icons.location_on,
                              size: 60.0,
                              color: primaryColor),
                        ),
                  ]
                  )])),
                Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child:  ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  children: <Widget>[
                    TherapistCard(
                      nama: 'Tuti Dianingsih, A.Md.Keb., CHE',
                      kesediaan: 'Tidak Tersedia',
                      pengalaman: 'Berpengalaman',
                      sertifikasi: 'Tersertifikasi',
                      alamat: 'Majalaya, Kab. Karawang',
                      jarak: 5.0,
                      imageTherapist: 'assets/image_terapis_1.png',
                    ),
                    TherapistCard(
                      nama: 'Tuti Dianingsih, A.Md.Keb., CHE',
                      kesediaan: 'Tidak Tersedia',
                      pengalaman: 'Berpengalaman',
                      sertifikasi: 'Tersertifikasi',
                      alamat: 'Majalaya, Kab. Karawang',
                      jarak: 5.0,
                      imageTherapist: 'assets/image_terapis_1.png',
                    ),
                    TherapistCard(
                      nama: 'Tuti Dianingsih, A.Md.Keb., CHE',
                      kesediaan: 'Tidak Tersedia',
                      pengalaman: 'Berpengalaman',
                      sertifikasi: 'Tersertifikasi',
                      alamat: 'Majalaya, Kab. Karawang',
                      jarak: 5.0,
                      imageTherapist: 'assets/image_terapis_1.png',
                    )
                  ]
                )
              )
            ],
          )
        ));
  }
}