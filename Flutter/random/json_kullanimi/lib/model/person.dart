import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  final String name;
  final String? creditCardNumber;
  final DateTime birthday;

  Person({
    required this.name,
    this.creditCardNumber,
    required this.birthday,
  });
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
