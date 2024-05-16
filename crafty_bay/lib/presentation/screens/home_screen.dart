import 'package:crafty_bay/presentation/state_holders/home_slider_controller.dart';
import 'package:crafty_bay/presentation/utility/assets_path.dart';
import 'package:crafty_bay/presentation/widgets/app_bar_icon_button.dart';
import 'package:crafty_bay/presentation/widgets/category_item.dart';
import 'package:crafty_bay/presentation/widgets/centered_circular_progress_indicator.dart';
import 'package:crafty_bay/presentation/widgets/home_carousel_slider.dart';
import 'package:crafty_bay/presentation/widgets/product_card.dart';
import 'package:crafty_bay/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchTextField(),
              const SizedBox(height: 16),
              GetBuilder<HomeSliderController>(builder: (sliderController) {
                if (sliderController.inProgress) {
                  return const SizedBox(
                      height: 200, child: CenteredCircularProgressIndicator());
                }
                return HomeCarouselSlider(
                  sliderList: sliderController.sliderList,
                );
              }),
              const SizedBox(height: 16),
              SectionHeader(
                title: 'All Category',
                onTapSeeAll: () {},
              ),
              const SizedBox(height: 10),
              _buildCategoryListView(),
              const SizedBox(height: 8),
              SectionHeader(
                title: 'Popular',
                onTapSeeAll: () {},
              ),
              const SizedBox(height: 10),
              _buildProductListView(),
              const SizedBox(height: 8),
              SectionHeader(
                title: 'Special',
                onTapSeeAll: () {},
              ),
              const SizedBox(height: 10),
              _buildProductListView(),
              const SizedBox(height: 8),
              SectionHeader(
                title: 'New',
                onTapSeeAll: () {},
              ),
              const SizedBox(height: 10),
              _buildProductListView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryListView() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      ),
    );
  }

  Widget _buildProductListView() {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      controller: _searchTEController,
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: Colors.grey.shade200,
        filled: true,
        prefixIcon: const Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appNavLogoSvg),
      actions: [
        AppBarIconButton(
          icon: Icons.person,
          onTap: () {},
        ),
        const SizedBox(width: 8),
        AppBarIconButton(
          icon: Icons.call,
          onTap: () {},
        ),
        const SizedBox(width: 8),
        AppBarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchTEController.dispose();
    super.dispose();
  }
}
