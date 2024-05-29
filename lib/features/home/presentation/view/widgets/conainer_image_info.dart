import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerImageInfoMy extends StatelessWidget {
  const ContainerImageInfoMy({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: 40,
      width: 30,
      decoration: const ShapeDecoration(
        shape: CircleBorder(
            side: BorderSide(
          color: Colors.white,
        )),
      ),
      child: SvgPicture.asset(
        image,
      ),
    );
  }
}
