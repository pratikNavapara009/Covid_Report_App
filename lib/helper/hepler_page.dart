import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/model_page.dart';


class CovidApi {
  CovidApi._();

  static final CovidApi covidAPI = CovidApi._();

  Future<List<CovidData>?> fetchCovidDataAPI() async {
    String url = "https://covid-19.dataflowkit.com/v1";

    http.Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {

      List data = jsonDecode(res.body);


      List<CovidData> covidDataList = data.map((e) {
        return CovidData.fromJSON(data: e);
      }).toList();
      return covidDataList;
    }
    return null;
  }
}