class NoteModel {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  final int color;

  NoteModel({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.color,
  });
}
