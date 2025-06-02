import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import '../helper/constants.dart';
import 'custom_loader_widget.dart';
import 'custom_text_widget.dart';

class CameraPickerWidget extends StatelessWidget {
  const CameraPickerWidget(
      {super.key,
      required this.onClick,
      this.title = 'Take picture from camera',
      this.icon = Icons.camera_alt_outlined});

  final VoidCallback onClick;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(left: 15.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey.shade400)],
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomTextWidget(
                text: title,
                textColor: Theme.of(context).primaryColorLight,
                maxLine: 1,
                fontSize: 12.0,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  border: Border.all(color: Colors.blue.shade50),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0))),
              child: Icon(
                icon,
                color: kAppColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PrescriptionButtonWidget extends StatelessWidget {
  const PrescriptionButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.onClick});

  final String title;
  final IconData icon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      splashColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey.shade400)],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: kAppColor,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: CustomTextWidget(
                text: title,
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 10.0),
            const Icon(
              Icons.navigate_next_rounded,
              color: kAppColor,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNetworkImageWidget extends StatelessWidget {
  const CustomNetworkImageWidget(
      {super.key,
      required this.imageUrl,
      required this.height,
      required this.width,
      this.borderRadius = 0,this.fit});

  final String imageUrl;
  final double height;
  final double width;
  final double borderRadius;
  final BoxFit?fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
          height: height,
          width: width,
          imageUrl: imageUrl,
          fit: fit,
          placeholder: (context, url) => const ShimmerLoader(),
          errorWidget: (context, url, error) => Image.asset(
            '$kImagePath/no_image.jpg',
            height: height,
            width: width,
          ),
        )

        /*Image.asset('$kImagePath/category.png'),*/
        );
  }
}
