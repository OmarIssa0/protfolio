import 'package:flutter/material.dart';
import 'package:my_protfolio/core/utils/app_font.dart';
import 'package:my_protfolio/core/utils/assets.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/conainer_image_info.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/custom_box_shadow.dart';

class BoxMyInfo extends StatelessWidget {
  const BoxMyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBoxShadow(
          isShow: true,
          isShowToo: false,
        ),
        Container(
          // height: 190,
          // width: 90,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.assetsImageMy),
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerEnd),
            // color: MyColor.kColorBoarderButton.withAlpha(15),
            color: const Color(0xFF383A48).withOpacity(.6),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: ListTile(
            // contentPadding: const EdgeInsets.all(0),

            title: Text(
              "Hello,I’m",
              style: AppFont.styleRegular18(context),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Omar issa",
                  style: AppFont.styleSemiBold21(context),
                ),
                const SizedBox(height: 9),
                Text(
                  "Mobile Application Developer",
                  style: AppFont.styleMedium10(context),
                ),
                const SizedBox(height: 9),
                Text(
                  "A skilled flutter developer with 3 years of\nexperience, you can contact me at any time to\nstart a work full of creativity and good\nperformance",
                  style: AppFont.styleMedium12(context),
                ),
                const SizedBox(height: 9),
                const Row(
                  children: [
                    SizedBox(width: 18),
                    ContainerImageInfoMy(
                      image: Assets.assetsImageGitHub,
                    ),
                    SizedBox(width: 9),
                    ContainerImageInfoMy(
                      image: Assets.assetsImageGmail,
                    ),
                    SizedBox(width: 9),
                    ContainerImageInfoMy(
                      image: Assets.assetsImageLinkedIn,
                    ),
                    SizedBox(width: 9),
                    ContainerImageInfoMy(
                      image: Assets.assetsImageTelegram,
                    ),
                    SizedBox(width: 9),
                    ContainerImageInfoMy(
                      image: Assets.assetsImageWhatsapp,
                    ),
                  ],
                ),
                const SizedBox(height: 9)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
