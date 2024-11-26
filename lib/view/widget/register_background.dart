import 'package:apptest1/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterBackground extends StatelessWidget {
  const RegisterBackground({super.key, this.isRegistered = true});
  final bool isRegistered;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.4,
          decoration: BoxDecoration(
            color: AppColors.secondryColor,
            image: DecorationImage(
              image: AssetImage(isRegistered
                  ? "assets/images/background_image.png"
                  : "assets/images/background_image2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
