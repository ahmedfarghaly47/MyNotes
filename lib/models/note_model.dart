import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final DateTime createdAt;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.color,
  });
}
