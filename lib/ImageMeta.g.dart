// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ImageMeta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageMeta _$ImageMetaFromJson(Map<String, dynamic> json) {
  return ImageMeta(
      categoryID: json['categoryID'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String);
}

Map<String, dynamic> _$ImageMetaToJson(ImageMeta instance) => <String, dynamic>{
      'categoryID': instance.categoryID,
      'title': instance.title,
      'artist': instance.artist
    };
