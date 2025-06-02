import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NewUserWidget extends StatelessWidget {
  const NewUserWidget(
      {super.key,
      required this.onClick,
      required this.firstTitle,
      required this.secondTitle});

  final VoidCallback onClick;
  final String firstTitle, secondTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.grey.shade100,
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: firstTitle,
                style: GoogleFonts.nunito(
                  color: Theme.of(context).hintColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                )),
            TextSpan(
              text: secondTitle,
              style: GoogleFonts.nunito(
                color: Theme.of(context).primaryColor,
                fontSize: 15.0,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w700,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
