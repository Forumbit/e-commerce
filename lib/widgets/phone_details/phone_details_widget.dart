import 'package:e_commerce/Theme/app_colors.dart';
import 'package:e_commerce/resources/resources.dart';
import 'package:flutter/material.dart';

class PhoneDetailsWidget extends StatelessWidget {
  const PhoneDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromRGBO(0, 0, 0, 0),
        backgroundColor: const Color(0xfff8f8f8),
      ),
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: SizedBox(
                  width: 37,
                  height: 37,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home_store');
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.customBlue),
                      side: MaterialStateProperty.all(BorderSide.none),
                      overlayColor: MaterialStateProperty.all(Colors.black12),
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Text(
                'Product Details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: SizedBox(
                  height: 37,
                  width: 37,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.customOrange),
                      side: MaterialStateProperty.all(BorderSide.none),
                      overlayColor: MaterialStateProperty.all(Colors.black12),
                    ),
                    child: const Image(image: AssetImage(Images.shop)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            height: 355,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: Color.fromRGBO(55, 78, 136, 0.16),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Image.network(
                'https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig'),
          )
        ],
      ),
    );
  }
}
