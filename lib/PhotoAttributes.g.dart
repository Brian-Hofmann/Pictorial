// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PhotoAttributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoAttributes _$PhotoAttributesFromJson(Map<String, dynamic> json) {
  return PhotoAttributes(
      displayURL: json['displayURL'] as String,
      imageURI: json['imageURI'] as String,
      imageMeta: json['imageMeta'] == null
          ? null
          : ImageMeta.fromJson(json['imageMeta'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PhotoAttributesToJson(PhotoAttributes instance) =>
    <String, dynamic>{
      'displayURL': instance.displayURL,
      'imageURI': instance.imageURI,
      'imageMeta': instance.imageMeta
    };
