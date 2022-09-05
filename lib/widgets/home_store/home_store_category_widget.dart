import 'package:flutter/material.dart';

import '../../Theme/app_colors.dart';
import '../../resources/resources.dart';

class HeaderCategoryWidget extends StatelessWidget {


  const HeaderCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Select Category',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Text(
          'view all',
          style: TextStyle(color: AppColors.customOrange),
        ),
        SizedBox(width: 16),
      ],
    );
  }
}

class CategoryBodyWidget extends StatelessWidget {

  final categoryItems = <CategoryItem>[
    CategoryItem(const Image(image: AssetImage(Images.phone)), 'Phones', true),
    CategoryItem(
        const Image(image: AssetImage(Images.computer)), 'Computer', false),
    CategoryItem(
        const Image(image: AssetImage(Images.health)), 'Health', false),
    CategoryItem(const Image(image: AssetImage(Images.books)), 'Books', false),
    CategoryItem(
        const Image(image: AssetImage(Images.computer)), 'Computer', false),
    CategoryItem(const Image(image: AssetImage(Images.books)), 'Books', false),
  ];


  CategoryBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: categoryItems
            .map((e) => _CategoryItemWidget(
                active: e.active, image: e.icon, text: e.text))
            .toList(),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  const _CategoryItemWidget({
    Key? key,
    required this.active,
    required this.image,
    required this.text,
  }) : super(key: key);

  final bool active;
  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 23),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    color: Color.fromRGBO(167, 171, 201, 0.15),
                  )
                ],
                shape: BoxShape.circle,
                color: active ? AppColors.customOrange : Colors.white,
              ),
              width: 71,
              height: 71,
              child: image,
            ),
            const SizedBox(height: 7),
            Text(
              text,
              style: active
                  ? const TextStyle(color: AppColors.customOrange, fontSize: 12)
                  : const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryItem {
  final Image icon;
  final String text;
  final bool active;

  CategoryItem(this.icon, this.text, this.active);
}
