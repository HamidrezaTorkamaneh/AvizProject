class Category {
  String id;
  String name;
  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> jsonObject) {
    return Category(
      id: jsonObject['id'],
      name: jsonObject['name'],
    );
  }
}
