// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ColorScoreModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorScoreModel _$ColorScoreModelFromJson(Map<String, dynamic> json) {
  return ColorScoreModel(
      color: json['color'] == null
          ? null
          : ColorModel.fromJson(json['color'] as Map<String, dynamic>),
      score: (json['score'] as num)?.toDouble(),
      pixelFraction: (json['pixelFraction'] as num)?.toDouble());
}

Map<String, dynamic> _$ColorScoreModelToJson(ColorScoreModel instance) =>
    <String, dynamic>{
      'color': instance.color,
      'score': instance.score,
      'pixelFraction': instance.pixelFraction
    };
