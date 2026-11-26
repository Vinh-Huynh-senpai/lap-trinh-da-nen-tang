class SubCategory{
  final int id;
  final int categoryId;
  final String name;
  final String title;
  final String description;
  final String imageUrl;
  SubCategory({
    required this.id,
    required this.categoryId,
    required this.description,
    required this.name,
    required this.imageUrl,
    required this.title,
  });
  factory SubCategory.fromMap(Map<String, dynamic> map){
    return SubCategory(
      id: map['id'],
      categoryId: map['categoryId'],
      description: map['description'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      title: map['title'],);
  }
}