import 'package:json_annotation/json_annotation.dart';
part 'ColorModel.g.dart';

@JsonSerializable()
class ColorModel {

  ColorModel({
    this.red,
    this.green,
    this.blue
  });

  int red;
  int green;
  int blue;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);

}