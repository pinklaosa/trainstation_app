// To parse this JSON data, do
//
//     final attractionModel = attractionModelFromJson(jsonString);

import 'dart:convert';

AttractionModel attractionModelFromJson(String str) =>
    AttractionModel.fromJson(json.decode(str));

String attractionModelToJson(AttractionModel data) =>
    json.encode(data.toJson());

class AttractionModel {
  AttractionModel({
    this.result,
  });

  Result result;

  factory AttractionModel.fromJson(Map<String, dynamic> json) =>
      AttractionModel(
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "result": result == null ? null : result.toJson(),
      };
}

class Result {
  Result({
    this.placeId,
    this.placeName,
    this.latitude,
    this.longitude,
    this.mapCode,
    this.sha,
    this.placeInformation,
    this.location,
    this.contact,
    this.thumbnailUrl,
    this.webPictureUrls,
    this.mobilePictureUrls,
    this.facilities,
    this.services,
    this.paymentMethods,
    this.howToTravel,
    this.openingHours,
    this.destination,
    this.tags,
    this.updateDate,
    this.hitScore,
  });

  String placeId;
  String placeName;
  double latitude;
  double longitude;
  String mapCode;
  Sha sha;
  PlaceInformation placeInformation;
  Location location;
  Contact contact;
  String thumbnailUrl;
  List<String> webPictureUrls;
  List<String> mobilePictureUrls;
  dynamic facilities;
  dynamic services;
  dynamic paymentMethods;
  String howToTravel;
  OpeningHours openingHours;
  String destination;
  dynamic tags;
  DateTime updateDate;
  dynamic hitScore;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        placeId: json["place_id"] == null ? null : json["place_id"],
        placeName: json["place_name"] == null ? null : json["place_name"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"].toDouble(),
        mapCode: json["map_code"] == null ? null : json["map_code"],
        sha: json["sha"] == null ? null : Sha.fromJson(json["sha"]),
        placeInformation: json["place_information"] == null
            ? null
            : PlaceInformation.fromJson(json["place_information"]),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        contact:
            json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        thumbnailUrl:
            json["thumbnail_url"] == null ? null : json["thumbnail_url"],
        webPictureUrls: json["web_picture_urls"] == null
            ? null
            : List<String>.from(json["web_picture_urls"].map((x) => x)),
        mobilePictureUrls: json["mobile_picture_urls"] == null
            ? null
            : List<String>.from(json["mobile_picture_urls"].map((x) => x)),
        facilities: json["facilities"],
        services: json["services"],
        paymentMethods: json["payment_methods"],
        howToTravel:
            json["how_to_travel"] == null ? null : json["how_to_travel"],
        openingHours: json["opening_hours"] == null
            ? null
            : OpeningHours.fromJson(json["opening_hours"]),
        destination: json["destination"] == null ? null : json["destination"],
        tags: json["tags"],
        updateDate: json["update_date"] == null
            ? null
            : DateTime.parse(json["update_date"]),
        hitScore: json["hit_score"],
      );

  Map<String, dynamic> toJson() => {
        "place_id": placeId == null ? null : placeId,
        "place_name": placeName == null ? null : placeName,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "map_code": mapCode == null ? null : mapCode,
        "sha": sha == null ? null : sha.toJson(),
        "place_information":
            placeInformation == null ? null : placeInformation.toJson(),
        "location": location == null ? null : location.toJson(),
        "contact": contact == null ? null : contact.toJson(),
        "thumbnail_url": thumbnailUrl == null ? null : thumbnailUrl,
        "web_picture_urls": webPictureUrls == null
            ? null
            : List<dynamic>.from(webPictureUrls.map((x) => x)),
        "mobile_picture_urls": mobilePictureUrls == null
            ? null
            : List<dynamic>.from(mobilePictureUrls.map((x) => x)),
        "facilities": facilities,
        "services": services,
        "payment_methods": paymentMethods,
        "how_to_travel": howToTravel == null ? null : howToTravel,
        "opening_hours": openingHours == null ? null : openingHours.toJson(),
        "destination": destination == null ? null : destination,
        "tags": tags,
        "update_date": updateDate == null ? null : updateDate.toIso8601String(),
        "hit_score": hitScore,
      };
}

class Contact {
  Contact({
    this.phones,
    this.mobiles,
    this.fax,
    this.emails,
    this.urls,
  });

  List<String> phones;
  dynamic mobiles;
  dynamic fax;
  dynamic emails;
  dynamic urls;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        phones: json["phones"] == null
            ? null
            : List<String>.from(json["phones"].map((x) => x)),
        mobiles: json["mobiles"],
        fax: json["fax"],
        emails: json["emails"],
        urls: json["urls"],
      );

  Map<String, dynamic> toJson() => {
        "phones":
            phones == null ? null : List<dynamic>.from(phones.map((x) => x)),
        "mobiles": mobiles,
        "fax": fax,
        "emails": emails,
        "urls": urls,
      };
}

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

class OpeningHours {
  OpeningHours({
    this.openNow,
    this.periods,
    this.weekdayText,
    this.specialCloseText,
  });

  bool openNow;
  List<Period> periods;
  Map<String, WeekdayText> weekdayText;
  String specialCloseText;

  factory OpeningHours.fromJson(Map<String, dynamic> json) => OpeningHours(
        openNow: json["open_now"] == null ? null : json["open_now"],
        periods: json["periods"] == null
            ? null
            : List<Period>.from(json["periods"].map((x) => Period.fromJson(x))),
        weekdayText: json["weekday_text"] == null
            ? null
            : Map.from(json["weekday_text"]).map((k, v) =>
                MapEntry<String, WeekdayText>(k, WeekdayText.fromJson(v))),
        specialCloseText: json["special_close_text"] == null
            ? null
            : json["special_close_text"],
      );

  Map<String, dynamic> toJson() => {
        "open_now": openNow == null ? null : openNow,
        "periods": periods == null
            ? null
            : List<dynamic>.from(periods.map((x) => x.toJson())),
        "weekday_text": weekdayText == null
            ? null
            : Map.from(weekdayText)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "special_close_text":
            specialCloseText == null ? null : specialCloseText,
      };
}

class Period {
  Period({
    this.open,
    this.close,
  });

  Close open;
  Close close;

  factory Period.fromJson(Map<String, dynamic> json) => Period(
        open: json["open"] == null ? null : Close.fromJson(json["open"]),
        close: json["close"] == null ? null : Close.fromJson(json["close"]),
      );

  Map<String, dynamic> toJson() => {
        "open": open == null ? null : open.toJson(),
        "close": close == null ? null : close.toJson(),
      };
}

class Close {
  Close({
    this.day,
    this.time,
  });

  int day;
  String time;

  factory Close.fromJson(Map<String, dynamic> json) => Close(
        day: json["day"] == null ? null : json["day"],
        time: json["time"] == null ? null : json["time"],
      );

  Map<String, dynamic> toJson() => {
        "day": day == null ? null : day,
        "time": time == null ? null : time,
      };
}

class WeekdayText {
  WeekdayText({
    this.day,
    this.time,
  });

  String day;
  String time;

  factory WeekdayText.fromJson(Map<String, dynamic> json) => WeekdayText(
        day: json["day"] == null ? null : json["day"],
        time: json["time"] == null ? null : json["time"],
      );

  Map<String, dynamic> toJson() => {
        "day": day == null ? null : day,
        "time": time == null ? null : time,
      };
}

class PlaceInformation {
  PlaceInformation({
    this.introduction,
    this.detail,
    this.attractionTypes,
    this.activities,
    this.fee,
    this.targets,
  });

  String introduction;
  String detail;
  List<AttractionType> attractionTypes;
  dynamic activities;
  Fee fee;
  dynamic targets;

  factory PlaceInformation.fromJson(Map<String, dynamic> json) =>
      PlaceInformation(
        introduction:
            json["introduction"] == null ? null : json["introduction"],
        detail: json["detail"] == null ? null : json["detail"],
        attractionTypes: json["attraction_types"] == null
            ? null
            : List<AttractionType>.from(json["attraction_types"]
                .map((x) => AttractionType.fromJson(x))),
        activities: json["activities"],
        fee: json["fee"] == null ? null : Fee.fromJson(json["fee"]),
        targets: json["targets"],
      );

  Map<String, dynamic> toJson() => {
        "introduction": introduction == null ? null : introduction,
        "detail": detail == null ? null : detail,
        "attraction_types": attractionTypes == null
            ? null
            : List<dynamic>.from(attractionTypes.map((x) => x.toJson())),
        "activities": activities,
        "fee": fee == null ? null : fee.toJson(),
        "targets": targets,
      };
}

class AttractionType {
  AttractionType({
    this.code,
    this.description,
  });

  String code;
  String description;

  factory AttractionType.fromJson(Map<String, dynamic> json) => AttractionType(
        code: json["code"] == null ? null : json["code"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "description": description == null ? null : description,
      };
}

class Fee {
  Fee({
    this.thaiChild,
    this.thaiAdult,
    this.foreignerChild,
    this.foreignerAdult,
  });

  String thaiChild;
  String thaiAdult;
  String foreignerChild;
  String foreignerAdult;

  factory Fee.fromJson(Map<String, dynamic> json) => Fee(
        thaiChild: json["thai_child"] == null ? null : json["thai_child"],
        thaiAdult: json["thai_adult"] == null ? null : json["thai_adult"],
        foreignerChild:
            json["foreigner_child"] == null ? null : json["foreigner_child"],
        foreignerAdult:
            json["foreigner_adult"] == null ? null : json["foreigner_adult"],
      );

  Map<String, dynamic> toJson() => {
        "thai_child": thaiChild == null ? null : thaiChild,
        "thai_adult": thaiAdult == null ? null : thaiAdult,
        "foreigner_child": foreignerChild == null ? null : foreignerChild,
        "foreigner_adult": foreignerAdult == null ? null : foreignerAdult,
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
  String shaTypeDescription;

  factory Sha.fromJson(Map<String, dynamic> json) => Sha(
        shaName: json["sha_name"] == null ? null : json["sha_name"],
        shaTypeCode:
            json["sha_type_code"] == null ? null : json["sha_type_code"],
        shaTypeDescription: json["sha_type_description"] == null
            ? null
            : json["sha_type_description"],
      );

  Map<String, dynamic> toJson() => {
        "sha_name": shaName == null ? null : shaName,
        "sha_type_code": shaTypeCode == null ? null : shaTypeCode,
        "sha_type_description":
            shaTypeDescription == null ? null : shaTypeDescription,
      };
}
