import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.code,
    required this.messages,
    required this.value,
  });

  String code;
  String messages;
  List<Value> value;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        code: json["code"],
        messages: json["messages"],
        value: List<Value>.from(json["value"].map((x) => Value.fromJson(x))),
      );

  get name => null;

  Map<String, dynamic> toJson() => {
        "code": code,
        "messages": messages,
        "value": List<dynamic>.from(value.map((x) => x.toJson())),
      };
}

class Value {
  Value({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
