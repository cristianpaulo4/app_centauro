import 'package:flutter/material.dart';

class ShopCarPage extends StatefulWidget {

  const ShopCarPage({ Key? key }) : super(key: key);

  @override
  State<ShopCarPage> createState() => _ShopCarPageState();
}

class _ShopCarPageState extends State<ShopCarPage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Container(),
       );
  }
}