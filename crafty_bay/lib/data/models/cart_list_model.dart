import 'package:crafty_bay/data/models/cart_item.dart';

class CartListModel {
  String? msg;
  List<CartItemModel>? cartList;

  CartListModel({this.msg, this.cartList});

  CartListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      cartList = <CartItemModel>[];
      json['data'].forEach((v) {
        cartList!.add(CartItemModel.fromJson(v));
      });
    }
  }
}
