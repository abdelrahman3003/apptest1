import 'package:apptest1/core/utils/app_colors.dart';
import 'package:apptest1/core/utils/app_styles.dart';
import 'package:apptest1/gen/assets.gen.dart';
import 'package:apptest1/view/register_view.dart';
import 'package:apptest1/view/widget/register_background.dart';
import 'package:apptest1/view/widget/register_model.dart';
import 'package:apptest1/view/widget/vistor_details_button.dart';
import 'package:apptest1/view/widget/vistor_list_title.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class VisitorDetailsView extends StatelessWidget {
  const VisitorDetailsView({super.key, required this.registerModel});
  final RegisterModel registerModel;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    // final args =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    // RegisterModel? registerModel = args?['model'];
    return Scaffold(
      backgroundColor: AppColors.secondryColor,
      body: Stack(
        children: [
          const RegisterBackground(isRegistered: false),
          Positioned(
            top: screenHeight * .3,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(30),
                        decoration:
                            const BoxDecoration(color: Color(0xff1D2131)),
                        child: SvgPicture.asset(Assets.icons.vaadinQrcode)),
                    const SizedBox(height: 15),
                    Text("Your Visitor QR Code",
                        style: AppStyles.style22font500primary(context)),
                    Text("was generated successfully!",
                        style: AppStyles.style22font400white(context)),
                    const SizedBox(height: 24),
                    VistorListTitle(
                        title: registerModel.title ?? "",
                        subtitle:
                            "${registerModel.date}--${registerModel.time}"),
                    const SizedBox(height: 24),
                    Text(
                        "Share this screen with your visitor so they can access it",
                        style: AppStyles.style12font500white(context)),
                    const SizedBox(height: 24),
                    const VistorDetailsButton(),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterView(),
                            ));
                      },
                      child: Text("Back To Home",
                          style: AppStyles.style12font500white(context)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
