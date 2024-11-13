import 'package:car_app/Controller/provider_cart.dart';
import 'package:car_app/Views/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(context) => CarCartProvidder(),
    child: (GetMaterialApp(
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Reguler',
          useMaterial3: true,
          colorSchemeSeed: Colors.white),
    )),
  ));
}