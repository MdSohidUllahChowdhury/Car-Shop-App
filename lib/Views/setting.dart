import 'package:car_app/Views/my_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Widgets/custom_bottom.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          body: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Utils.appbarCustom('Setting'),
                const SizedBox(
                  height: 15,
                ),
                CustomBottom(
                  nameTheBottom: 'My Cart',
                  iconName: Icons.shopping_cart,
                  routName: () => Get.to(() => const MyCart(),
                      transition: Transition.upToDown,
                      duration: const Duration(seconds: 1)),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomBottom(
                  nameTheBottom: 'Social Media Links',
                  iconName: Icons.share,
                  routName: () => Get.snackbar(
                      'Working on it', 'New feature will come soon'),
                ),
              ],
            ),
          )),
    );
  }
}
