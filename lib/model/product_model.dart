
class Productmodel {
  Productmodel({
    required this.results,
  });

  List<Result>results;

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.id,
    required this.categoryName,
    required this.thumbnail,
    required this.categoryNo,
  });

  int id;
  String categoryName;
  String thumbnail;
  int categoryNo;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        categoryName: json["category_name"],
        thumbnail: json["thumbnail"],
        categoryNo: json["category_no"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
        "thumbnail": thumbnail,
        "category_no": categoryNo
      };
}
