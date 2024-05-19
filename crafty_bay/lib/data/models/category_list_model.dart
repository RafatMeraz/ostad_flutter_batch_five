import 'package:crafty_bay/data/models/category.dart';

class CategoryListModel {
  String? msg;
  List<Category>? categoryList;

  CategoryListModel({this.msg, this.categoryList});

  CategoryListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      categoryList = <Category>[];
      json['data'].forEach((v) {
        categoryList!.add(Category.fromJson(v));
      });
    }
  }
}
