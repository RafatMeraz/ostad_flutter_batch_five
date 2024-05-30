import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class WishButton extends StatelessWidget {
  const WishButton(
      {super.key,
      this.showAddToWishlist = true,
      this.isSelected = false,
      required this.onTap});

  final bool showAddToWishlist;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: showAddToWishlist,
        replacement: _getIconButton(Icons.delete_outline),
        child: InkWell(
          onTap: onTap,
          child: _getIconButton(_getIconData()),
        ));
  }

  Widget _getIconButton(IconData icon) {
    return Card(
      color: AppColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  IconData _getIconData() {
    return isSelected ? Icons.favorite : Icons.favorite_outline_rounded;
  }
}
