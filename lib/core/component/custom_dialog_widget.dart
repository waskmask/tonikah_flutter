import 'package:flutter/material.dart';
import 'custom_button_widget.dart';
import 'custom_text_widget.dart';

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
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0))),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextWidget(
                        text: title,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.clear, color: Colors.white))
                  ],
                )),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: CustomTextWidget(
                text: message,
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                child: CustomButtonWidget(
                  text: btnText,
                  onClick: onClick,
                  height: 45.0,
                  radius: 8.0,
                )),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionDialogWidget extends StatelessWidget {
  const QuestionDialogWidget(
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
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0))),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextWidget(
                        text: title,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.clear, color: Colors.white))
                  ],
                )),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: CustomTextWidget(
                text: message,
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 16.0,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButtonWidget(
                      text: 'No',
                      onClick: () {
                        Navigator.pop(context);
                      },
                      height: 45.0,
                      radius: 100.0,
                      btnColor: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: CustomButtonWidget(
                      text: btnText,
                      onClick: onClick,
                      height: 45.0,
                      radius: 25.0,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}

class SuccessDialogWidget extends StatelessWidget {
  const SuccessDialogWidget(
      {super.key,
      required this.title,
      required this.message,
      required this.onClick,
      required this.btnText,
      this.image = 'success.json',
      this.height = 150.0});

  final String title;
  final String message;
  final String btnText;
  final VoidCallback onClick;
  final String image;
  final double height;

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
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              child: const Icon(
                Icons.done,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: CustomTextWidget(
                text: message,
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                child: CustomButtonWidget(
                  text: btnText,
                  onClick: onClick,
                  height: 45.0,
                  radius: 8.0,
                )),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

class PercentageLoadingDialog extends StatelessWidget {
  const PercentageLoadingDialog({super.key, required this.stream});

  final Stream<double> stream;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).scaffoldBackgroundColor),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Compressing video...Please wait.',
              textColor: Theme.of(context).primaryColorLight,
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0),
            StreamBuilder<double>(
              stream: stream,
              builder: (context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.data != null && snapshot.data > 0) {
                  return Column(
                    children: [
                      LinearProgressIndicator(
                        minHeight: 8,
                        value: snapshot.data / 100,
                      ),
                      const SizedBox(height: 8),
                      CustomTextWidget(
                        text: '${snapshot.data.toStringAsFixed(0)}%',
                        textColor: Theme.of(context).primaryColor,
                      )
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
