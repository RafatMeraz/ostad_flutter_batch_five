import 'package:crafty_bay/data/models/cart_item.dart';
import 'package:crafty_bay/presentation/state_holders/cart_list_controller.dart';
import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:crafty_bay/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class CartProductItem extends StatefulWidget {
  const CartProductItem({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  late int _counterValue;

  @override
  void initState() {
    super.initState();
    _counterValue = widget.cartItem.qty!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      surfaceTintColor: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          _buildProductImage(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildProductDetails(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildProductName(), _buildColorAndSize()],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete_outline_sharp),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${widget.cartItem.product?.price ?? 0}',
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.primaryColor),
            ),
            _buildCounter(),
          ],
        ),
      ],
    );
  }

  Widget _buildColorAndSize() {
    return Wrap(
      spacing: 16,
      children: [
        Text(
          'Color: ${widget.cartItem.color ?? ''}',
          style: const TextStyle(color: Colors.black54),
        ),
        Text(
          'Size: ${widget.cartItem.size ?? ''}',
          style: const TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  Widget _buildCounter() {
    return ItemCount(
      initialValue: _counterValue,
      minValue: 1,
      maxValue: 20,
      decimalPlaces: 0,
      color: AppColors.primaryColor,
      onChanged: (value) {
        _counterValue = value as int;
        setState(() {});
        Get.find<CartListController>()
            .changeProductQuantity(widget.cartItem.id!, _counterValue);
      },
    );
  }

  Widget _buildProductName() {
    return Text(
      widget.cartItem.product?.title ?? '',
      maxLines: 1,
      style: const TextStyle(
          fontSize: 16, color: Colors.black, overflow: TextOverflow.ellipsis),
    );
  }

  Widget _buildProductImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        AssetsPath.productDummyImgPng,
        width: 100,
      ),
    );
  }
}
