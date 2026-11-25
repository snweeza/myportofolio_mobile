import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    required this.title,
    required this.description,
    required this.url,
    // this.starCount = 0,
    // this.isStarred = false,
    // this.starredByNames = const [],
    this.id,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  final String url;
  // final int starCount;
  // final bool isStarred;
  // final List<String> starredByNames;

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
