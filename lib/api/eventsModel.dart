// To parse this JSON data, do
//
//     final eventsFromApi = eventsFromApiFromJson(jsonString);

import 'dart:convert';

EventsFromApi eventsFromApiFromJson(String str) =>
    EventsFromApi.fromJson(json.decode(str));

String eventsFromApiToJson(EventsFromApi data) => json.encode(data.toJson());

class EventsFromApi {
  EventsFromApi({
    this.result,
  });

  List<Result> result;

  factory EventsFromApi.fromJson(Map<String, dynamic> json) => EventsFromApi(
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
    this.eventId,
    this.eventName,
    this.latitude,
    this.longitude,
    this.displayEventPeriodDate,
    this.eventStartDate,
    this.eventEndDate,
    this.eventIntroduction,
    this.thumbnailUrl,
    this.distance,
    this.destination,
    this.tags,
    this.location,
    this.updateDate,
  });

  String eventId;
  String eventName;
  double latitude;
  double longitude;
  String displayEventPeriodDate;
  DateTime eventStartDate;
  DateTime eventEndDate;
  String eventIntroduction;
  String thumbnailUrl;
  int distance;
  String destination;
  dynamic tags;
  String location;
  DateTime updateDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        eventId: json["event_id"] == null ? null : json["event_id"],
        eventName: json["event_name"] == null ? null : json["event_name"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"].toDouble(),
        displayEventPeriodDate: json["display_event_period_date"] == null
            ? null
            : json["display_event_period_date"],
        eventStartDate: json["event_start_date"] == null
            ? null
            : DateTime.parse(json["event_start_date"]),
        eventEndDate: json["event_end_date"] == null
            ? null
            : DateTime.parse(json["event_end_date"]),
        eventIntroduction: json["event_introduction"] == null
            ? null
            : json["event_introduction"],
        thumbnailUrl:
            json["thumbnail_url"] == null ? null : json["thumbnail_url"],
        distance: json["distance"] == null ? null : json["distance"],
        destination: json["destination"] == null ? null : json["destination"],
        tags: json["tags"],
        location: json["location"] == null ? null : json["location"],
        updateDate: json["update_date"] == null
            ? null
            : DateTime.parse(json["update_date"]),
      );

  Map<String, dynamic> toJson() => {
        "event_id": eventId == null ? null : eventId,
        "event_name": eventName == null ? null : eventName,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "display_event_period_date":
            displayEventPeriodDate == null ? null : displayEventPeriodDate,
        "event_start_date":
            eventStartDate == null ? null : eventStartDate.toIso8601String(),
        "event_end_date":
            eventEndDate == null ? null : eventEndDate.toIso8601String(),
        "event_introduction":
            eventIntroduction == null ? null : eventIntroduction,
        "thumbnail_url": thumbnailUrl == null ? null : thumbnailUrl,
        "distance": distance == null ? null : distance,
        "destination": destination == null ? null : destination,
        "tags": tags,
        "location": location == null ? null : location,
        "update_date": updateDate == null ? null : updateDate.toIso8601String(),
      };
}
