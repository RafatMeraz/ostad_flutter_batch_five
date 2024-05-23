import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImageCarouselSlider extends StatefulWidget {
  const ProductImageCarouselSlider({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  State<ProductImageCarouselSlider> createState() =>
      _ProductImageCarouselSliderState();
}

class _ProductImageCarouselSliderState
    extends State<ProductImageCarouselSlider> {
  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            _buildCarouselSlider(),
            Positioned(
                bottom: 8, left: 0, right: 0, child: _buildDotIndicator())
          ],
        ),
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 220,
          viewportFraction: 1,
          onPageChanged: (index, _) {
            _selectedPageIndex.value = index;
          }),
      items: widget.images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
                alignment: Alignment.center,
              child: Image.network(image, fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildDotIndicator() {
    return ValueListenableBuilder(
      valueListenable: _selectedPageIndex,
      builder: (context, currentPage, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < widget.images.length; i++)
              Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color:
                      i == currentPage ? AppColors.primaryColor : Colors.white,
                  border: Border.all(
                      color: i == currentPage
                          ? AppColors.primaryColor
                          : Colors.white,
                      width: 1),
                  borderRadius: BorderRadius.circular(50),
                ),
              )
          ],
        );
      },
    );
  }
}
