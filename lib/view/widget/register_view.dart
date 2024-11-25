import 'package:apptest1/view/widget/register_appbar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height *
                0.4, // 40% من ارتفاع الشاشة
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                fit: BoxFit.cover, // لتغطية المساحة المخصصة بالكامل
              ),
            ),
          ),
          const Positioned(
            top: 1,
            child: Column(
              children: [
                SizedBox(height: 20),
                RegisterAppbar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
