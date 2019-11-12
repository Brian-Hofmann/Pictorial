import 'package:json_annotation/json_annotation.dart';
import 'package:pictorial/ColorModel.dart';
part 'ColorScoreModel.g.dart';

@JsonSerializable()
class ColorScoreModel {

  ColorScoreModel({
    this.color,
    this.score,
    this.pixelFraction
  });

  ColorModel color;
  double score;
  double pixelFraction;

  factory ColorScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ColorScoreModelFromJson(json);

}