import 'package:flutter/material.dart';
import 'package:my_protfolio/core/utils/my_color.dart';

class ShadowAboutMe extends StatelessWidget {
  const ShadowAboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: MyColor.kColorBoarderButton.withAlpha(60),
            boxShadow: [
              BoxShadow(
                color: MyColor.kColorBoarderButton.withOpacity(0.5),
                blurRadius: 50,
                spreadRadius: 12,
              ),
              const BoxShadow(
                color: Colors.purple,
                blurRadius: 80,
                // offset: Offset(0, 10),
              ),
              BoxShadow(
                  color: Colors.white70.withAlpha(25),
                  blurRadius: 100,
                  spreadRadius: 0),
            ]),
      ),
    );
  }
}
