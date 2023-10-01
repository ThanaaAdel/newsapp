import 'package:flutter/material.dart';
import 'package:newsapp/constant/colors.dart';
import 'package:newsapp/core/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: Styles.textStyle18
                  .copyWith(color: ColorsClass.kPrimaryColorBlack),
            ),
            Text(
              "Cloud",
              style: Styles.textStyle20
                  .copyWith(color: ColorsClass.kPrimaryColorOrange),
            ),
          ],
        ));
  }
}
