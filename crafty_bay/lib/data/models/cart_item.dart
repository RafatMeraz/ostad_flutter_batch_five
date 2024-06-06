import 'package:crafty_bay/data/models/product.dart';

class CartItemModel {
  int? id;
  int? userId;
  int? productId;
  String? color;
  String? size;
  int? qty = 1;
  String? price;
  String? createdAt;
  String? updatedAt;
  Product? product;

  CartItemModel(
      {this.id,
        this.userId,
        this.productId,
        this.color,
        this.size,
        this.qty,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.product});

  CartItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    color = json['color'];
    size = json['size'];
    qty = int.tryParse(json['qty'] ?? '') ?? 1;
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product =
    json['product'] != null ? Product.fromJson(json['product']) : null;
  }
}
