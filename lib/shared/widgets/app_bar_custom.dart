import 'package:app_centauro/shared/assets/assets.dart';
import 'package:app_centauro/shared/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColors,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Image.asset(
                    Assets.app_bar_logo,
                    height: 19.58,
                  ),
                  Image.asset(
                    Assets.carrinho,
                    height: 37,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                    hintText: "Buscar por produtos",
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black26,
                      fontSize: 14,
                    ),
                    contentPadding: EdgeInsets.all(6),
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(328, 124);
}
