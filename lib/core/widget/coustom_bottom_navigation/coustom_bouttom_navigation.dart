import 'package:flutter/material.dart';
import 'package:flutter_techblog/core/constants/colors/app_colors.dart';
import 'package:flutter_techblog/gen/assets.gen.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.size,
    required this.changeScreen
  });

  final Size size;
  final Function(int value) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // gradiant
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width,
            height: size.height / 10,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: GradiantColor.bottomNavBg,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
        ),
        // bottom navigation
        Positioned(
          bottom: 20,
          left: 40,
          right: 40,
          child: Container(
            width: size.width / 1.3,
            height: size.height / 12.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                    colors: GradiantColor.purpleGradiant
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // home icon
                IconButton(
                    onPressed: () => changeScreen(0),
                    icon: Image.asset(Assets.icons.homeicon.path)),
                // write icon
                IconButton(
                    onPressed: () => changeScreen(1),
                    icon: Image.asset(Assets.icons.write.path)),
                // user icon
                IconButton(
                    onPressed: () => changeScreen(1),
                    icon: Image.asset(Assets.icons.user.path)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
