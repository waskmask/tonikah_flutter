import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_text_widget.dart';

class CustomPopMenuWidget extends StatelessWidget {
  const CustomPopMenuWidget(
      {super.key,
        required this.filter,
        required this.onTap,
        required this.icons,
        this.iconColor = Colors.black54});

  final List<String> filter;
  final ValueChanged<int> onTap;
  final IconData icons;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onTap,
      icon: Container(
        padding: EdgeInsets.symmetric(vertical: 9.0,horizontal: 9.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kAppColor,width: 0.5)
        ),
        child: Icon(
          icons,
          color: iconColor,
        ),
      ),
      itemBuilder: (context) {
        return List.generate(
            filter.length,
                (index) => PopupMenuItem(
              value: index,
              // row with 2 children
              child: CustomTextWidget(
                  text: filter[index], textColor: Colors.black),
            ));
      },
    );
  }
}

/*
class OrderPopMenuWidget extends StatelessWidget {
  const OrderPopMenuWidget(
      {super.key,
        required this.filter,
        required this.onTap,
        required this.icons,
        this.iconColor = Colors.black54});

  final List<OrderStatusData> filter;
  final ValueChanged<int> onTap;
  final IconData icons;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onTap,
      icon: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kAppColor,width: 0.5)
        ),
        child: Icon(
          icons,
          color: iconColor,
        ),
      ),
      itemBuilder: (context) {
        return List.generate(
            filter.length,
                (index) => PopupMenuItem(
              value: index,
              // row with 2 children
              child: CustomTextWidget(
                  text: filter[index].name ?? '', textColor: Colors.black),
            ));
      },
    );
  }
}*/
