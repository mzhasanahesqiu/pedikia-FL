import 'dart:convert';
import 'package:pedikia/pages/models/therapist.dart';
import 'package:http/http.dart' as http;

class TherapistApi {
  static Future<List<Therapist>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.nearest.therapist"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "YOUR API KEY FROM YUMMLY API",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Therapist.therapistFromSnapshot(_temp);
  }
}