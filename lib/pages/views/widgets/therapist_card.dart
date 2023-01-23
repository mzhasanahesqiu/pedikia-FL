import 'package:flutter/material.dart';
import 'package:pedikia/theme.dart';

class TherapistCard extends StatelessWidget {
  final String nama;
  final String kesediaan;
  final String pengalaman;
  final String sertifikasi;
  final String alamat;
  final double jarak;
  final String imageTherapist;
  TherapistCard({
    required this.nama,
    required this.pengalaman,
    required this.kesediaan,
    required this.sertifikasi,
    required this.alamat,
    required this.jarak,
    required this.imageTherapist
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(0.0, 2.0,),
            blurRadius: 4.5,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            child: Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.fromLTRB(0, 10, 275, 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black,
                    BlendMode.multiply,
                  ),
                  image: AssetImage(imageTherapist),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            )
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 0, 5),
              child: Text(
                nama,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.fromLTRB(90, 37, 0, 5),
              child: Row(
                children: [
                  Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.black,
                    size: 12,
                  ),
                  SizedBox(width: 0),
                  Text(alamat + ' (' + jarak.toString() + ' KM)',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.left
                  ),
                ],
              ),
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.fromLTRB(90, 5, 0, 10),
                  decoration: BoxDecoration(
                    color: redLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 0),
                      Text(kesediaan, style: TextStyle(color: Colors.black, fontSize: 10), textAlign: TextAlign.center, maxLines: 2),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.fromLTRB(5, 5, 0, 10),
                  decoration: BoxDecoration(
                    color: greenLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 0),
                      Text(pengalaman,
                          style: TextStyle(color: Colors.black, fontSize: 10),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.fromLTRB(5, 5, 10, 10),
                  decoration: BoxDecoration(
                    color: greenLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 0),
                      Text(sertifikasi, style: TextStyle(color: Colors.black, fontSize: 10), textAlign: TextAlign.center, maxLines: 2),
                    ],
                  ),
                )
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}