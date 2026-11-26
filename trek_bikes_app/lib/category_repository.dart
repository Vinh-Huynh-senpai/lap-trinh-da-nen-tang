import 'package:trek_bikes_app/category.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class CategoryRepository {
  static final String baseUrl = "http://localhost:5283/api/Category";
  static Future<List<Category>?> getCategories() async {
    var rs = await http.get(
      Uri.parse(baseUrl),
      headers: {'content-type': 'application/json'},
    );
    if (rs.statusCode == 200) {
      List<dynamic> data = jsonDecode(rs.body);
      return data.map((p) => Category.fromMap(p)).toList();
    }
    return null;
  }
}
