import 'package:flutter/material.dart';
import 'package:my_protfolio/core/utils/app_font.dart';
import 'package:my_protfolio/core/utils/my_color.dart';

class RowButtonTop extends StatelessWidget {
  const RowButtonTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: MyColor.kColorBoarderButton, blurRadius: 20),
                  ],
                  color: MyColor.kBackGroundScreen,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: MyColor.kColorBoarderButton,
                  ),
                ),
                child: Text(
                  "Resume",
                  style: AppFont.styleRegular18(context),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                  style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent)),
                  onPressed: () {},
                  child: Text(
                    "Recmmendation",
                    style: AppFont.styleRegular18(context),
                  )),
              const SizedBox(width: 9),
              TextButton(
                  style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent)),
                  onPressed: () {},
                  child: Text(
                    "Projects",
                    style: AppFont.styleRegular18(context),
                  )),
              const SizedBox(width: 9),
              TextButton(
                  style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent)),
                  onPressed: () {},
                  child: Text(
                    "Services",
                    style: AppFont.styleRegular18(context),
                  )),
              const SizedBox(width: 9),
              TextButton(
                  style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent)),
                  onPressed: () {},
                  child: Text(
                    "About",
                    style: AppFont.styleRegular18(context),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
