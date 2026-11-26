class Category {
  final int id;
  final String name;
  final String title;
  final String description;
  final String icon;
  Category({
    required this.id,
    required this.name,
    required this.title,
    required this.description,
    required this.icon,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'],
      title: map['title'],
      description: map['description'],
      icon: map['icon'],
    );
  }
}
