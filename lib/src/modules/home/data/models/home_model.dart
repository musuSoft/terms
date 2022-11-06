HomeModel authFromJson(Map<String, dynamic> docMap) =>
    HomeModel.fromJson(docMap);

class HomeModel {
  HomeModel({
    this.nameTerm,
    this.titleTerm,
  });
  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        //
        nameTerm: json['nameTerm'] as String?,
        titleTerm: json['titleTerm'] as String?,
      );
  String? nameTerm;
  String? titleTerm;
}
