import 'package:e_commerce/Theme/app_colors.dart';
import 'package:e_commerce/resources/resources.dart';
import 'package:e_commerce/widgets/home_store/home_store_hot_sales_widget.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'filter_bottom_modal_widget.dart';
import 'home_store_best_seller_widget.dart';
import 'home_store_category_widget.dart';
import 'home_store_search_widget.dart';

class HomeStoreWidget extends StatelessWidget {
  const HomeStoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        shadowColor: const Color.fromRGBO(0, 0, 0, 0),
        backgroundColor: const Color(0xfff8f8f8),
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: const [
          Image(image: AssetImage(Images.geolocation)),
          SizedBox(width: 11),
          Text(
            'Zihuatanejo, Gro',
            style: TextStyle(color: AppColors.customBlue),
          ),
          SizedBox(width: 8),
          Image(image: AssetImage(Images.chevronBottom))
        ]),
        actions: [
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const CircleBorder()),
              side: MaterialStateProperty.all(BorderSide.none),
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            onPressed: () {
              showMaterialModalBottomSheet(
                backgroundColor: const Color.fromRGBO(1, 1, 1, 0),
                barrierColor: const Color.fromRGBO(1, 1, 1, 0),
                context: context,
                builder: (context) => FilterBottomModalWidget(),
              );
            },
            child: const Image(image: AssetImage(Images.filter)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            const HeaderCategoryWidget(),
            const SizedBox(height: 24),
            CategoryBodyWidget(),
            const SizedBox(height: 35),
            const SearchWidget(),
            const SizedBox(height: 24),
            const HotSalesWidget(),
            const BestSellerWidget(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            color: AppColors.customBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          height: 8,
                          width: 8,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 7),
                      const Text(
                        'Explorer',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {},
                  child: const Image(
                    image: AssetImage(Images.shop),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: const Image(
                    image: AssetImage(Images.favorite),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: const Image(
                    image: AssetImage(Images.person),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
