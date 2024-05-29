import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/core/utils/my_color.dart';

class CustomBoxShadow extends StatelessWidget {
  const CustomBoxShadow({
    super.key,
    required this.isShow,
    required this.isShowToo,
  });

  final bool isShow;
  final bool isShowToo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isShow
            ? Container(
                height: 55,
                width: 90,
                decoration: BoxDecoration(boxShadow: [
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
              )
            : Container(
                height: 55,
                width: 90,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.5),
                    blurRadius: 50,
                  ),
                  BoxShadow(
                    color: MyColor.kColorBoarderButton.withOpacity(0.5),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                      color: Colors.white70.withAlpha(25),
                      blurRadius: 35,
                      spreadRadius: 0),
                ]),
              ),
        isShowToo
            ? Container(
                height: 55,
                width: 90,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.5),
                    blurRadius: 50,
                  ),
                  BoxShadow(
                    color: MyColor.kColorBoarderButton.withOpacity(0.5),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                      color: Colors.white70.withAlpha(25),
                      blurRadius: 35,
                      spreadRadius: 0),
                ]),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
// class CustomBoxShadow extends StatelessWidget {
//   const CustomBoxShadow({
//     super.key,
//     required this.isShow,
//   });

//   final bool isShow;

//   @override
//   Widget build(BuildContext context) {
//     return isShow
//         ? Container(
//             height: 55,
//             width: 90,
//             decoration: BoxDecoration(boxShadow: [
//               BoxShadow(
//                 color: MyColor.kColorBoarderButton.withOpacity(0.5),
//                 blurRadius: 50,
//                 spreadRadius: 12,
//               ),
//               const BoxShadow(
//                 color: Colors.purple,
//                 blurRadius: 80,
//                 // offset: Offset(0, 10),
//               ),
//               BoxShadow(
//                   color: Colors.white70.withAlpha(25),
//                   blurRadius: 100,
//                   spreadRadius: 0),
//             ]),
//           )
//         : Container(
//             height: 55,
//             width: 90,
//             decoration: BoxDecoration(boxShadow: [
//               BoxShadow(
//                 color: Colors.purple.withOpacity(0.5),
//                 blurRadius: 50,
//               ),
//               BoxShadow(
//                 color: MyColor.kColorBoarderButton.withOpacity(0.5),
//                 blurRadius: 25,
//                 spreadRadius: 0,
//               ),
//               BoxShadow(
//                   color: Colors.white70.withAlpha(25),
//                   blurRadius: 35,
//                   spreadRadius: 0),
//             ]),
//           );
//   }
// }
