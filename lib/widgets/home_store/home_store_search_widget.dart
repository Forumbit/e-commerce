import 'package:flutter/material.dart';

import '../../Theme/app_colors.dart';
import '../../resources/resources.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Color.fromRGBO(167, 171, 201, 0.15),
                ),
              ],
            ),
            height: 34,
            child: TextField(
              cursorColor: AppColors.customOrange,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.customOrange),
                ),
                contentPadding: const EdgeInsets.only(left: 15),
                label: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(width: 30),
                    Image(image: AssetImage(Images.search)),
                    SizedBox(width: 20),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 11),
        SizedBox(
          height: 34,
          width: 34,
          child: OutlinedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              backgroundColor:
                  MaterialStateProperty.all(AppColors.customOrange),
              shape: MaterialStateProperty.all(const CircleBorder()),
              side: MaterialStateProperty.all(BorderSide.none),
              overlayColor: MaterialStateProperty.all(Colors.black12),
            ),
            onPressed: () {},
            child: const Image(image: AssetImage(Images.qr)),
          ),
        ),
      ],
    );
  }
}
