import 'package:app_centauro/features/home/presentation/pages/home_page.dart';
import 'package:app_centauro/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centauro App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(     
        primarySwatch: Colors.red,
      ),
      initialRoute: Routes.home,
      routes: Routes.routes,
    
    );
  }
}
