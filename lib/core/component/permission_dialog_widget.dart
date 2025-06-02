
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../helper/constants.dart';
import 'custom_button_widget.dart';
import 'custom_text_field_widget.dart';
import 'custom_text_widget.dart';

class PermissionDialogWidget extends StatelessWidget {
  const PermissionDialogWidget(
      {super.key,
      this.message = 'Permission Required',
      this.icon = Icons.cancel,
      this.title = 'Allow Permission'});

  final String title;
  final String message;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).scaffoldBackgroundColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15.0),
              Icon(
                icon,
                size: 50.0,
                color: Colors.red,
              ),
              const SizedBox(height: 15.0),
              CustomTextWidget(
                text: title,
                textColor: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
              ),
              const SizedBox(height: 10.0),
              CustomTextWidget(
                text: message,
                textColor: Colors.black,
                textAlign: TextAlign.center,
                fontSize: 13.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomButtonWidget(
                text: 'Go to settings',
                onClick: () {
                  Navigator.pop(context);
                 openAppSettings();
                },
                height: 45.0,
                radius: 5.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ));
  }
}

class SimpleDialogWidget extends StatelessWidget {
  const SimpleDialogWidget(
      {super.key,
      required this.title,
      required this.message,
      required this.onClick,
      required this.btnText});

  final String title;
  final String message;
  final String btnText;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).scaffoldBackgroundColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 10.0),
                  child:
                      CustomTextWidget(text: title, textColor: Colors.white)),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextWidget(
                text: message,
                textColor: Colors.black,
                fontSize: 16.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 8.0),
                  child: CustomButtonWidget(
                    text: btnText,
                    onClick: onClick,
                    height: 45.0,
                    btnColor: Colors.white,
                  )),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ));
  }
}

//CustomButtonTwoWidget(
//                     radius: 10.0,
//                     text: 'Go to settings',
//                     height: 45.0,
//                     onClick: () {
//                       Navigator.pop(context);
//                       openAppSettings();
//                     },
//                     btnColor: kAppColor),

class CameraDialogWidget extends StatelessWidget {
  const CameraDialogWidget(
      {super.key,
      required this.title,
      required this.message,
      required this.btnText,
      required this.onClick,
      required this.onClick1,
      required this.btnText1});

  //
  final String title;
  final String message;
  final String btnText;
  final String btnText1;
  final VoidCallback onClick;
  final VoidCallback onClick1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).scaffoldBackgroundColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0))),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 10.0),
                  child:
                      CustomTextWidget(text: title, textColor: Colors.white)),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextWidget(
                text: message,
                textColor: Colors.black,
                fontSize: 16.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 8.0),
                      child: CustomButtonWidget(
                        text: btnText,
                        onClick: onClick,
                        height: 45.0,
                        btnColor: Colors.white,
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 8.0),
                      child: CustomButtonWidget(
                        text: btnText1,
                        onClick: onClick1,
                        height: 45.0,
                        btnColor: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ));
  }
}

class SimpleInputDialogWidget extends StatelessWidget {
  const SimpleInputDialogWidget(
      {super.key,
      required this.title,
      required this.message,
      required this.onClick,
      required this.msgController,
      required this.btnText});

  final String title;
  final String message;
  final String btnText;
  final VoidCallback onClick;
  final TextEditingController msgController;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).scaffoldBackgroundColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: kAppColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomTextWidget(
                            text: title, textColor: Colors.white)),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DescriptionTextField(
                    hintText: message,
                    controller: msgController,
                    inputType: TextInputType.multiline,
                    inputAction: TextInputAction.newline,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomButtonWidget(
                        text: 'No',
                        onClick: () {
                          Navigator.pop(context);
                        },
                        height: 45.0,
                        btnColor: Colors.red,
                        radius: 25,
                      )),
                      const SizedBox(width: 15.0),
                      Expanded(
                          child: CustomButtonWidget(
                        text: btnText,
                        onClick: onClick,
                        height: 45.0,
                        btnColor: Colors.green,
                        radius: 25,
                      )),
                    ],
                  )),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ));
  }
}
