import 'package:app_centauro/features/home/presentation/widgets/item.dart';
import 'package:app_centauro/shared/assets/assets.dart';
import 'package:app_centauro/shared/colors/app_colors.dart';
import 'package:app_centauro/shared/widgets/app_bar_custom.dart';
import 'package:app_centauro/shared/widgets/foot_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarCustom(),
            Container(
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              height: 349,
              decoration: BoxDecoration(               
                image: DecorationImage(
                  image: AssetImage(Assets.banner),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14,
              ),
              child: Text(
                'Promoções em destaque',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 8 / 16,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Item();
              },
            ),
            const SizedBox(height: 66,),
            FootApp()
          ],
        ),
      ),
    );
  }
}
