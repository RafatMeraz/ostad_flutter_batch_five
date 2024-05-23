import 'package:crafty_bay/data/models/product_details_model.dart';

class ProductDetailsWrapperModel {
  String? msg;
  List<ProductDetailsModel>? productDetails;

  ProductDetailsWrapperModel({this.msg, this.productDetails});

  ProductDetailsWrapperModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      productDetails = <ProductDetailsModel>[];
      json['data'].forEach((v) {
        productDetails!.add(ProductDetailsModel.fromJson(v));
      });
    }
  }
}
