import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../core/utils/app_styles.dart';
import '../../gen/assets.gen.dart';

class VistorListTitle extends StatelessWidget {
  const VistorListTitle({super.key, required this.title, required this.subtitle});
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: RadialGradient(
          center: Alignment.center, // نقطة البداية من المنتصف
          radius: 3, // مدى الانتشار
          colors: [
            const Color(0xFF213848), // اللون الأساسي
            const Color(0xFF213848).withOpacity(0), // نهاية التدرج بشفافية
          ],
          stops: const [0.5, 1.0], // النقاط التي يحدث فيها التغير
        ),
      ),
      child: ListTile(
        leading: SvgPicture.asset(Assets.icons.person),
        title: Text(
          title,
          style: AppStyles.style12font500white(context),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.style12font500white(context)
              .copyWith(fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
