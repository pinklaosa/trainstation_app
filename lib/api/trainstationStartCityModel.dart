// To parse this JSON data, do
//
//     final trainstationCityEngModel = trainstationCityEngModelFromJson(jsonString);

import 'dart:convert';

TrainstationCityEngModel trainstationCityEngModelFromJson(String str) =>
    TrainstationCityEngModel.fromJson(json.decode(str));

String trainstationCityEngModelToJson(TrainstationCityEngModel data) =>
    json.encode(data.toJson());

class TrainstationCityEngModel {
  TrainstationCityEngModel({
    this.data,
    this.numData,
    this.property,
    this.message,
    this.status,
  });

  List<Datum> data;
  String numData;
  List<Property> property;
  String message;
  String status;

  factory TrainstationCityEngModel.fromJson(Map<String, dynamic> json) =>
      TrainstationCityEngModel(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        numData: json["numData"] == null ? null : json["numData"],
        property: json["property"] == null
            ? null
            : List<Property>.from(
                json["property"].map((x) => Property.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "numData": numData == null ? null : numData,
        "property": property == null
            ? null
            : List<dynamic>.from(property.map((x) => x.toJson())),
        "message": message == null ? null : message,
        "status": status == null ? null : status,
      };
}

class Datum {
  Datum({
    this.nameStEng,
    this.stStart,
  });

  String nameStEng;
  String stStart;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        nameStEng: json["NameStEng"] == null ? null : json["NameStEng"],
        stStart: json["StStart"] == null ? null : json["StStart"],
      );

  Map<String, dynamic> toJson() => {
        "NameStEng": nameStEng == null ? null : nameStEng,
        "StStart": stStart == null ? null : stStart,
      };
}

class Property {
  Property({
    this.col6,
    this.col10,
  });

  String col6;
  String col10;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        col6: json["col_6"] == null ? null : json["col_6"],
        col10: json["col_10"] == null ? null : json["col_10"],
      );

  Map<String, dynamic> toJson() => {
        "col_6": col6 == null ? null : col6,
        "col_10": col10 == null ? null : col10,
      };
}
