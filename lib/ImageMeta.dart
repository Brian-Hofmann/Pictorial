import 'package:json_annotation/json_annotation.dart';
part 'ImageMeta.g.dart';

@JsonSerializable()
class ImageMeta {

  ImageMeta({
    this.categoryID,
    this.title,
    this.artist
  });

  String categoryID;
  String title;
  String artist;

  factory ImageMeta.fromJson(Map<String, dynamic> json) => _$ImageMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ImageMetaToJson(this);

}