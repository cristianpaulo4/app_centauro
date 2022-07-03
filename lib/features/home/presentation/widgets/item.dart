import 'package:app_centauro/shared/assets/assets.dart';
import 'package:app_centauro/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.black26,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Assets.produto,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: _Discount(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical:3),
            height: 25,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(
                2,
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Frete Grátis",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          const Text(
            "Tênis New Balance ML501 - Masculino",
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          const _Prince(),
          const _Star(),
          const _ColorsOptions(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Comprar',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Prince extends StatelessWidget {
  const _Prince({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "R\$ 199,99",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "R\$299,99",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.black45,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}

class _Discount extends StatelessWidget {
  const _Discount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.appBarColors,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(
        "30%",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColors.appBarColors,
        ),
      ),
    );
  }
}

class _ColorsOptions extends StatelessWidget {
  const _ColorsOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(color: Colors.grey.shade100),
      alignment: Alignment.center,
      child: Text(
        '5 cores',
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class _Star extends StatelessWidget {
  const _Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: AppColors.appBarColors,
            ),
            Icon(
              Icons.star,
              color: AppColors.appBarColors,
            ),
            Icon(
              Icons.star,
              color: AppColors.appBarColors,
            ),
            Icon(
              Icons.star,
              color: AppColors.appBarColors,
            ),
            Icon(
              Icons.star_half,
              color: AppColors.appBarColors,
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "(1954)",
          style: TextStyle(
            color: Colors.black38,
          ),
        )
      ],
    );
  }
}
