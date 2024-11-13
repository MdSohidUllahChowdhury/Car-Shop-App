import 'package:car_app/Views/my_cart.dart';
import 'package:car_app/Views/profile.dart';
import 'package:car_app/Widgets/card_of_car.dart';
import 'package:flutter/material.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Widgets/car_logo_model.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CarMainScreen extends StatelessWidget {
  
  String? giveNAME;
  CarMainScreen({super.key,this.giveNAME});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Column(
            children: [

            ListTile(
              contentPadding: const EdgeInsets.only(top: 8, left: 6, right: 6),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    const AssetImage('lib/Assets/image/profile.png'),
                child: InkWell(
                  onTap: () => Get.to(() => const Profile(),
                      transition: Transition.leftToRight,
                      duration: const Duration(seconds: 1)),
                ),
              ),
              title: const Text(
                'Hello',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.5,
                ),
              ),
              subtitle: InkWell(
                onTap: () => Get.to(()=>const Profile()),
                child: Text(
                 giveNAME != null ? giveNAME! : '✏️Guest',
                  style:const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 1.2,
                      fontFamily: 'Bold'),
                ),
              ),
              trailing: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {
                        Get.to(() => const MyCart(),
                            transition: Transition.upToDown,
                            duration: const Duration(seconds: 1));
                      },
                      icon: Icon(
                        Icons.add_shopping_cart,
                        size: 25,
                        color: Colors.grey.shade800,
                      ))),
            ),
            
            Utils.listSearchInfo(),
            const SizedBox(height: 10),
            carLogo(),
            const SizedBox(height: 12),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15),
                            Utils.populerViewAll(),
                            const CarCard(),
                          ]))),
            ),
          ])),
    );
  }
}
