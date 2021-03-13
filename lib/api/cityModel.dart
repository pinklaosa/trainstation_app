// To parse this JSON data, do
//
//     final cityFromApi = cityFromApiFromJson(jsonString);

import 'dart:convert';

CityFromApi cityFromApiFromJson(String str) =>
    CityFromApi.fromJson(json.decode(str));

String cityFromApiToJson(CityFromApi data) => json.encode(data.toJson());

class CityFromApi {
  CityFromApi({
    this.code,
    this.status,
    this.msg,
    this.time,
    this.paramObj,
    this.summary,
    this.result,
  });

  String code;
  String status;
  String msg;
  DateTime time;
  ParamObj paramObj;
  Summary summary;
  List<Result> result;

  factory CityFromApi.fromJson(Map<String, dynamic> json) => CityFromApi(
        code: json["code"] == null ? null : json["code"],
        status: json["status"] == null ? null : json["status"],
        msg: json["msg"] == null ? null : json["msg"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        paramObj: json["param_obj"] == null
            ? null
            : ParamObj.fromJson(json["param_obj"]),
        summary:
            json["summary"] == null ? null : Summary.fromJson(json["summary"]),
        result: json["result"] == null
            ? null
            : List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "status": status == null ? null : status,
        "msg": msg == null ? null : msg,
        "time": time == null ? null : time.toIso8601String(),
        "param_obj": paramObj == null ? null : paramObj.toJson(),
        "summary": summary == null ? null : summary.toJson(),
        "result": result == null
            ? null
            : List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class ParamObj {
  ParamObj({
    this.provName,
    this.provCode,
    this.provId,
    this.provGfCode,
  });

  bool provName;
  bool provCode;
  bool provId;
  bool provGfCode;

  factory ParamObj.fromJson(Map<String, dynamic> json) => ParamObj(
        provName: json["prov_name"] == null ? null : json["prov_name"],
        provCode: json["prov_code"] == null ? null : json["prov_code"],
        provId: json["prov_id"] == null ? null : json["prov_id"],
        provGfCode: json["prov_gf_code"] == null ? null : json["prov_gf_code"],
      );

  Map<String, dynamic> toJson() => {
        "prov_name": provName == null ? null : provName,
        "prov_code": provCode == null ? null : provCode,
        "prov_id": provId == null ? null : provId,
        "prov_gf_code": provGfCode == null ? null : provGfCode,
      };
}

class Result {
  Result({
    this.provCode,
    this.provName,
    this.provId,
    this.provGfCode,
  });

  String provCode;
  String provName;
  String provId;
  String provGfCode;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        provCode: json["prov_code"] == null ? null : json["prov_code"],
        provName: json["prov_name"] == null ? null : json["prov_name"],
        provId: json["prov_id"] == null ? null : json["prov_id"],
        provGfCode: json["prov_gf_code"] == null ? null : json["prov_gf_code"],
      );

  Map<String, dynamic> toJson() => {
        "prov_code": provCode == null ? null : provCode,
        "prov_name": provName == null ? null : provName,
        "prov_id": provId == null ? null : provId,
        "prov_gf_code": provGfCode == null ? null : provGfCode,
      };
}

class Summary {
  Summary({
    this.total,
  });

  int total;

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        total: json["total"] == null ? null : json["total"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
      };
}
