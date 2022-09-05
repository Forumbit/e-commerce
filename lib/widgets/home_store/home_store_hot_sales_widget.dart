import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 32,
          child: Row(
            children: const [
              Text(
                'Hot sales',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Text(
                'see more',
                style: TextStyle(
                  color: AppColors.customOrange,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 2),
        _CardHotSalesWidget()
      ],
    );
  }
}

class _CardHotSalesWidget extends StatelessWidget {
  List<String> urlImages = [
    'https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both',
    'https://cdn-2.tstatic.net/kupang/foto/bank/images/pre-order-samsung-galaxy-a71-laris-manis-inilah-rekomendasi-ponsel-harga-rp-6-jutaan.jpg',
    'https://static.digit.in/default/942998b8b4d3554a6259aeb1a0124384dbe0d4d5.jpeg',
  ];
  _CardHotSalesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 182,
      child: CarouselSlider.builder(
        itemCount: urlImages.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final urlImage = urlImages[index];
          return _CardHotSalesItemWidget(urlImage: urlImage, index: index);
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1.04,
          height: 182,
        ),
      ),
    );
  }
}

class _CardHotSalesItemWidget extends StatelessWidget {
  final String urlImage;
  final int index;
  const _CardHotSalesItemWidget({
    Key? key,
    required this.urlImage,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(76, 95, 143, 0.1),
            blurRadius: 20,
            offset: Offset(0, -5),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: -20,
                right: -500,
                child: Image.network(
                  urlImage,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 27,
                      height: 27,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.customOrange,
                      ),
                      child: const Center(
                        child: Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Iphone 12',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Súper. Mega. Rápido.',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 26),
                    const _ButtonCardHotSalesWidget()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonCardHotSalesWidget extends StatelessWidget {
  const _ButtonCardHotSalesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.black12)),
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 37),
        child: Text(
          'Buy now!',
          style: TextStyle(
              color: Colors.black, fontSize: 11, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
