// To parse this JSON data, do
//
//     final trainstationModel = trainstationModelFromJson(jsonString);

import 'dart:convert';

TrainstationModel trainstationModelFromJson(String str) =>
    TrainstationModel.fromJson(json.decode(str));

String trainstationModelToJson(TrainstationModel data) =>
    json.encode(data.toJson());

class TrainstationModel {
  TrainstationModel({
    this.numData,
    this.data,
    this.message,
    this.status,
  });

  String numData;
  List<Datum> data;
  String message;
  String status;

  factory TrainstationModel.fromJson(Map<String, dynamic> json) =>
      TrainstationModel(
        numData: json["numData"] == null ? null : json["numData"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "numData": numData == null ? null : numData,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
        "status": status == null ? null : status,
      };
}

class Datum {
  Datum({
    this.nameFee,
    this.nameStEng,
    this.goback,
    this.zone,
    this.num,
    this.service,
    this.nameStEngL,
    this.idTrain,
    this.nameSt,
    this.empty,
    this.stFinal,
    this.nameStL,
    this.stStart,
  });

  String nameFee;
  String nameStEng;
  String goback;
  String zone;
  String num;
  Service service;
  String nameStEngL;
  String idTrain;
  String nameSt;
  String empty;
  String stFinal;
  String nameStL;
  String stStart;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        nameFee: json["NameFee"] == null ? null : json["NameFee"],
        nameStEng: json["NameStEng"] == null ? null : json["NameStEng"],
        goback: json["goback"] == null ? null : json["goback"],
        zone: json["Zone"] == null ? null : json["Zone"],
        num: json["Num"] == null ? null : json["Num"],
        service:
            json["Service"] == null ? null : serviceValues.map[json["Service"]],
        nameStEngL: json["NameStEng_L"] == null ? null : json["NameStEng_L"],
        idTrain: json["IdTrain"] == null ? null : json["IdTrain"],
        nameSt: json["NameSt"] == null ? null : json["NameSt"],
        empty: json["ลำดับ"] == null ? null : json["ลำดับ"],
        stFinal: json["StFinal"] == null ? null : json["StFinal"],
        nameStL: json["NameSt_L"] == null ? null : json["NameSt_L"],
        stStart: json["StStart"] == null ? null : json["StStart"],
      );

  Map<String, dynamic> toJson() => {
        "NameFee": nameFee == null ? null : nameFee,
        "NameStEng": nameStEng == null ? null : nameStEng,
        "goback": goback == null ? null : goback,
        "Zone": zone == null ? null : zone,
        "Num": num == null ? null : num,
        "Service": service == null ? null : serviceValues.reverse[service],
        "NameStEng_L": nameStEngL == null ? null : nameStEngL,
        "IdTrain": idTrain == null ? null : idTrain,
        "NameSt": nameSt == null ? null : nameSt,
        "ลำดับ": empty == null ? null : empty,
        "StFinal": stFinal == null ? null : stFinal,
        "NameSt_L": nameStL == null ? null : nameStL,
        "StStart": stStart == null ? null : stStart,
      };
}

enum Service { TRUE }

final serviceValues = EnumValues({"TRUE": Service.TRUE});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
