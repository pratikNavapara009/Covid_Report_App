class CovidData {
  final String countryName;
  final String todayDeaths;
  final String activeCasesText;
  final String totalDeaths;
  final String totalConfirmed;
  final String totalRecovered;

  CovidData({
    required this.countryName,
    required this.todayDeaths,
    required this.activeCasesText,
    required this.totalDeaths,
    required this.totalConfirmed,
    required this.totalRecovered,
  });

  factory CovidData.fromJSON({required Map data}) {
    return CovidData(
      countryName: data["Country_text"] ?? " - ",
      todayDeaths: data["New Deaths_text"] ?? " - ",
      activeCasesText:data ["New Cases_text"] ?? " - ",
      totalDeaths:data ["Total Deaths_text"] ?? " - ",
      totalConfirmed:data["Total Cases_text"] ?? " - ",
      totalRecovered: data["Total Recovered_text"] ?? " - ",
    );
  }
}
