import 'package:flutter/material.dart';
import 'package:my_protfolio/core/utils/app_font.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/shadow_about_me.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
    required this.aboutMe,
  });
  final String aboutMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const ShadowAboutMe(),
          const SizedBox(width: 20),
          Text(aboutMe, style: AppFont.styleRegular18(context)),
          const SizedBox(width: 20),
          const ShadowAboutMe(),
        ],
      ),
    );
  }
}
