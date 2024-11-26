import 'package:flutter/material.dart';

class RegisterBackground extends StatelessWidget {
  const RegisterBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.4, // 40% من الشاشة
          decoration: const BoxDecoration(
            color: Color(0xff333844),
            image: DecorationImage(
              image: AssetImage("assets/images/background_image.png"),
              fit: BoxFit.cover, // تغطية المساحة بالكامل
            ),
          ),
        ),
      ],
    );
  }
}
