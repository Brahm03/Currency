class UsdModel {
    UsdModel({
        this.date,
        this.base,
        this.results,
        this.ms,
    });

    DateTime? date;
    String? base;
    Map<String, double>? results;
    int? ms;

    factory UsdModel.fromJson(Map<String, dynamic> json) => UsdModel(
        date: DateTime.parse(json["date"]),
        base: json["base"],
        results: Map.from(json["results"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        ms: json["ms"],
    );
}
