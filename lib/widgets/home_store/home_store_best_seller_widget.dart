import 'package:e_commerce/resources/resources.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 850,
      child: GridView.count(
        padding: const EdgeInsets.only(top: 25),
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 181 / 227,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(76, 95, 143, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child:
                const _BestSellerItemWidget(assetName: Images.favoriteFill),
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(76, 95, 143, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child:
                const _BestSellerItemWidget(assetName: Images.favoriteOutline),
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(76, 95, 143, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: const _BestSellerItemWidget(assetName: Images.favoriteFill),
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(76, 95, 143, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child:
                const _BestSellerItemWidget(assetName: Images.favoriteOutline),
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(76, 95, 143, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: const _BestSellerItemWidget(assetName: Images.favoriteFill),
          ),
        ],
      ),
    );
  }
}

class _BestSellerItemWidget extends StatelessWidget {
  const _BestSellerItemWidget({
    Key? key,
    required this.assetName,
  }) : super(key: key);

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                        'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21),
                    child: Row(
                      children: const [
                        Text(
                          '\$1,047',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        SizedBox(width: 7),
                        Text(
                          '\$1,500',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Color.fromRGBO(204, 204, 204, 1),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 21),
                    child: Text(
                      'Samsung Galaxy s20 Ultra',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ),
          _FavoriteBestSellerWidgetButton(
            assetName: assetName,
          ),
        ],
      ),
    );
  }
}

class _FavoriteBestSellerWidgetButton extends StatelessWidget {
  const _FavoriteBestSellerWidgetButton({
    Key? key,
    required this.assetName,
  }) : super(key: key);

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 6,
      right: 15,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(76, 95, 143, 0.1),
              blurRadius: 20,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            shape: MaterialStateProperty.all(const CircleBorder()),
            overlayColor: MaterialStateProperty.all(Colors.black12),
            side: MaterialStateProperty.all(BorderSide.none),
          ),
          child: Image(
            width: 25,
            height: 25,
            image: AssetImage(
              assetName,
            ),
          ),
        ),
      ),
    );
  }
}
