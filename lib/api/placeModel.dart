// To parse this JSON data, do
//
//     final placeFromApi = placeFromApiFromJson(jsonString);

import 'dart:convert';

PlaceFromApi placeFromApiFromJson(String str) =>
    PlaceFromApi.fromJson(json.decode(str));

String placeFromApiToJson(PlaceFromApi data) => json.encode(data.toJson());

class PlaceFromApi {
  PlaceFromApi({
    this.result,
  });

  List<Result> result;

  factory PlaceFromApi.fromJson(Map<String, dynamic> json) => PlaceFromApi(
        result: json["result"] == null
            ? null
            : List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "result": result == null
            ? null
            : List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.placeId,
    this.placeName,
    this.latitude,
    this.longitude,
    this.categoryCode,
    this.categoryDescription,
    this.sha,
    this.location,
    this.thumbnailUrl,
    this.destination,
    this.tags,
    this.distance,
    this.updateDate,
  });

  String placeId;
  String placeName;
  double latitude;
  double longitude;
  CategoryCode categoryCode;
  CategoryDescription categoryDescription;
  Sha sha;
  Location location;
  String thumbnailUrl;
  String destination;
  dynamic tags;
  int distance;
  DateTime updateDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        placeId: json["place_id"] == null ? null : json["place_id"],
        placeName: json["place_name"] == null ? null : json["place_name"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"].toDouble(),
        categoryCode: json["category_code"] == null
            ? null
            : categoryCodeValues.map[json["category_code"]],
        categoryDescription: json["category_description"] == null
            ? null
            : categoryDescriptionValues.map[json["category_description"]],
        sha: json["sha"] == null ? null : Sha.fromJson(json["sha"]),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        thumbnailUrl:
            json["thumbnail_url"] == null ? null : json["thumbnail_url"],
        destination: json["destination"] == null ? null : json["destination"],
        tags: json["tags"],
        distance: json["distance"] == null ? null : json["distance"],
        updateDate: json["update_date"] == null
            ? null
            : DateTime.parse(json["update_date"]),
      );

  Map<String, dynamic> toJson() => {
        "place_id": placeId == null ? null : placeId,
        "place_name": placeName == null ? null : placeName,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "category_code": categoryCode == null
            ? null
            : categoryCodeValues.reverse[categoryCode],
        "category_description": categoryDescription == null
            ? null
            : categoryDescriptionValues.reverse[categoryDescription],
        "sha": sha == null ? null : sha.toJson(),
        "location": location == null ? null : location.toJson(),
        "thumbnail_url": thumbnailUrl == null ? null : thumbnailUrl,
        "destination": destination == null ? null : destination,
        "tags": tags,
        "distance": distance == null ? null : distance,
        "update_date": updateDate == null ? null : updateDate.toIso8601String(),
      };
}

enum CategoryCode { RESTAURANT, ACCOMMODATION, OTHER, ATTRACTION, SHOP }

final categoryCodeValues = EnumValues({
  "ACCOMMODATION": CategoryCode.ACCOMMODATION,
  "ATTRACTION": CategoryCode.ATTRACTION,
  "OTHER": CategoryCode.OTHER,
  "RESTAURANT": CategoryCode.RESTAURANT,
  "SHOP": CategoryCode.SHOP
});

enum CategoryDescription {
  EMPTY,
  CATEGORY_DESCRIPTION,
  PURPLE,
  FLUFFY,
  TENTACLED
}

final categoryDescriptionValues = EnumValues({
  "โรงแรม": CategoryDescription.CATEGORY_DESCRIPTION,
  "ร้านอาหาร กาแฟ เบเกอรี่": CategoryDescription.EMPTY,
  "สถานที่ท่องเที่ยว": CategoryDescription.FLUFFY,
  "สถานที่อื่นๆ": CategoryDescription.PURPLE,
  "ร้านค้า": CategoryDescription.TENTACLED
});

class Location {
  Location({
    this.address,
    this.subDistrict,
    this.district,
    this.province,
    this.postcode,
  });

  String address;
  String subDistrict;
  String district;
  String province;
  String postcode;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: json["address"] == null ? null : json["address"],
        subDistrict: json["sub_district"] == null ? null : json["sub_district"],
        district: json["district"] == null ? null : json["district"],
        province: json["province"] == null ? null : json["province"],
        postcode: json["postcode"] == null ? null : json["postcode"],
      );

  Map<String, dynamic> toJson() => {
        "address": address == null ? null : address,
        "sub_district": subDistrict == null ? null : subDistrict,
        "district": district == null ? null : district,
        "province": province == null ? null : province,
        "postcode": postcode == null ? null : postcode,
      };
}

class Sha {
  Sha({
    this.shaName,
    this.shaTypeCode,
    this.shaTypeDescription,
  });

  String shaName;
  String shaTypeCode;
  ShaTypeDescription shaTypeDescription;

  factory Sha.fromJson(Map<String, dynamic> json) => Sha(
        shaName: json["sha_name"] == null ? null : json["sha_name"],
        shaTypeCode:
            json["sha_type_code"] == null ? null : json["sha_type_code"],
        shaTypeDescription: json["sha_type_description"] == null
            ? null
            : shaTypeDescriptionValues.map[json["sha_type_description"]],
      );

  Map<String, dynamic> toJson() => {
        "sha_name": shaName == null ? null : shaName,
        "sha_type_code": shaTypeCode == null ? null : shaTypeCode,
        "sha_type_description": shaTypeDescription == null
            ? null
            : shaTypeDescriptionValues.reverse[shaTypeDescription],
      };
}

enum ShaTypeDescription {
  EMPTY,
  SHA_TYPE_DESCRIPTION,
  PURPLE,
  FLUFFY,
  TENTACLED
}

final shaTypeDescriptionValues = EnumValues({
  "": ShaTypeDescription.EMPTY,
  "ร้านค้าของที่ระลึก และร้านค้าอื่นๆ": ShaTypeDescription.FLUFFY,
  "นันทนาการ และสถานที่ท่องเที่ยว": ShaTypeDescription.PURPLE,
  "โรงแรมและที่พัก สถานที่จัดการประชุม":
      ShaTypeDescription.SHA_TYPE_DESCRIPTION,
  "ภัตตาคาร/ร้านอาหาร": ShaTypeDescription.TENTACLED
});

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
