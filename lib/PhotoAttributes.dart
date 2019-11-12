import 'package:json_annotation/json_annotation.dart';
import 'package:pictorial/ImageMeta.dart';
part 'PhotoAttributes.g.dart';

@JsonSerializable()
class PhotoAttributes {

  PhotoAttributes({
    this.displayURL,
    this.imageURI,
    this.imageMeta
  });

  String displayURL;
  String imageURI;
  ImageMeta imageMeta;

  Map<String, dynamic> toJson() => _$PhotoAttributesToJson(this);

  factory PhotoAttributes.fromJson(Map<String, dynamic> json) => _$PhotoAttributesFromJson(json);

}