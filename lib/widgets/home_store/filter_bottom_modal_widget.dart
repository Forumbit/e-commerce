import 'package:e_commerce/Theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../resources/resources.dart';

class DropDownButtonItem {
  final List<String> list;
  final String listName;

  DropDownButtonItem({
    required this.list,
    required this.listName,
  });
}

class FilterBottomModalWidget extends StatelessWidget {
  FilterBottomModalWidget({
    Key? key,
  }) : super(key: key);

  List<DropDownButtonItem> dropDownItemList = <DropDownButtonItem>[
    DropDownButtonItem(
      list: ['Samsung', 'Xiaomi', 'Apple', 'Google'],
      listName: 'Brand',
    ),
    DropDownButtonItem(
      list: ['\$300-\$500', '\$500-\$1000', '\$1000-\$1200', '\$1200+'],
      listName: 'Price',
    ),
    DropDownButtonItem(
      list: [
        '4.5 to 5.5 inches',
        '5.5 to 6.5 inches',
        '6.5 to 7.5 inches',
        '7.5 to 8.5 inches'
      ],
      listName: 'Size',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(76, 95, 143, 0.1),
            blurRadius: 20,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 37,
                height: 37,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: OutlinedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.customBlue)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Image(
                      image: AssetImage(Images.cancel),
                    ),
                  ),
                ),
              ),
              const Text(
                'Filter options',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.customOrange)),
                  onPressed: () {
                    print('done');
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 44),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: dropDownItemList
                  .map((DropDownButtonItem item) => _FilterDropDownItem(
                        listFilter: item.list,
                        nameFilter: item.listName,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class _FilterDropDownItem extends StatelessWidget {
  const _FilterDropDownItem({
    Key? key,
    required this.nameFilter,
    required this.listFilter,
  }) : super(key: key);

  final String nameFilter;
  final List<String> listFilter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameFilter,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.customBlue,
          ),
        ),
        const SizedBox(height: 5),
        _FilterDropDownButton(
          dropdownValue: listFilter.first,
          list: listFilter,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _FilterDropDownButton extends StatelessWidget {
  const _FilterDropDownButton({
    Key? key,
    required this.dropdownValue,
    required this.list,
  }) : super(key: key);

  final String dropdownValue;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButton<String>(
        underline: Container(),
        borderRadius: BorderRadius.circular(12),
        isExpanded: true,
        value: dropdownValue,
        elevation: 2,
        items: list.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 14),
                Text(value),
                // const Image(image: AssetImage(Images.chevronBottom))
              ],
            ),
          );
        }).toList(),
        onChanged: (text) {},
      ),
    );
  }
}
