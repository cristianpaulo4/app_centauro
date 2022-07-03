import 'package:app_centauro/shared/assets/assets.dart';
import 'package:app_centauro/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class FootApp extends StatelessWidget {
  const FootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,    
      color: AppColors.foot_app_color,      
      child: Image.asset(Assets.foot_logo),
    );
  }
}
