import 'package:apptest1/view/widget/register_appbar.dart';
import 'package:apptest1/view/widget/register_background.dart';
import 'package:apptest1/view/widget/register_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const RegisterBackground(),
          const Positioned(top: 25, left: 0, right: 0, child: RegisterAppbar()),
          Positioned(
              top: screenHeight * .13,
              left: 0,
              right: 0,
              bottom: 0,
              child: const RegisterBody()),
        ],
      ),
    );
  }
}
