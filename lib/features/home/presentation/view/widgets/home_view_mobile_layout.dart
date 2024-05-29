import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_protfolio/core/utils/app_font.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/about_me.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/box_my_info.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/custom_box_shadow.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/row_button_top.dart';

class HomeViewMobileLayout extends StatelessWidget {
  const HomeViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          const RowButtonTop(),
          const Padding(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 8.0, vertical: 8),
            child: BoxMyInfo(),
          ),
          const SizedBox(height: 45),
          const AboutMe(aboutMe: "About Me"),
          const SizedBox(height: 30),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              const CustomBoxShadow(
                isShowToo: false,
                isShow: false,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I'm a skilled Flutter developer with a passion for creating innovative mobile apps.\nMy expertise lies in designing user-friendly interfaces and writing efficient code.\nI stay updated on industry trends and excel at problem-solving, ensuring top-notch applications that impress users.\nI'm dedicated to sculpting innovative, user-centric solutions that breathe life into every pixel.",
                      style: AppFont.styleRegular15(context),
                    ),
                    const SizedBox(height: 5),
                    Text('“Personality”', style: AppFont.styleBold20(context)),
                    const SizedBox(height: 5),
                    Text(
                      "I’m a social person who likes to work with a team and be collaborative.\nI like to deal with honesty and transparency in order to gain the people around me.\nI am passionate about my work and love creativity and constant learning,\nyou can tell when you get to know me",
                      style: AppFont.styleRegular15(context),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 45),
          const AboutMe(aboutMe: "“What I Can Do ?”"),
          const SizedBox(height: 30),
          const Column(
            children: [
              Row(
                children: [
                  // Container(
                  //   color: Colors.white,
                  //   child: SvgPicture.asset(
                  //     Assets.assetsImageOne,
                  //     height: 83,
                  //     width: 150,
                  //     fit: BoxFit.scaleDown,
                  //   ),
                  // ),
                  // Container(
                  //   // color: Colors.white,
                  //   child: SvgPicture.asset(
                  //     Assets.assetsImageBusiness1,
                  //     height: 83,
                  //     width: 150,
                  //     fit: BoxFit.scaleDown,
                  //   ),
                  // ),
                  // SvgPicture.asset(
                  //   Assets.assetsImageWhatICanToo,
                  //   height: 83,
                  //   width: 150,
                  //   fit: BoxFit.scaleDown,
                  // ),
                ],
              ),
              // Row(
              //   children: [
              //     SvgPicture.asset(
              //       Assets.assetsImageWhatICanDoThree,
              //       height: 83,
              //       width: 150,
              //       fit: BoxFit.scaleDown,
              //     ),
              //     SvgPicture.asset(
              //       Assets.assetsImageWhatICanDoFor,
              //       height: 83,
              //       width: 150,
              //       fit: BoxFit.scaleDown,
              //     ),
              //   ],
              // )
            ],
          )
        ],
      ),
    );
  }
}
