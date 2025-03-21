import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Widgets/custom_bottom.dart';
import 'package:car_app/Widgets/profile_details.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          body: Column(
            children: [
              Utils.appbarCustom('Wallet'),
              Text(
                'Available Balance',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade200,
                  fontFamily: 'Bold',
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(24)),
                child: const Center(
                  child: Text(
                    '\$78,580',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontFamily: 'Bold',
                      letterSpacing: 1.3,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cards',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1.3,
                      ),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add),
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileDetails(
                      iconNmae: Icons.payment_outlined, titleName: 'VISA'),
                  ProfileDetails(iconNmae: Icons.payment, titleName: 'NCB'),
                  ProfileDetails(
                      iconNmae: Icons.payment, titleName: 'JCB'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'History',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: 1.3,
                    fontFamily: 'Bold'),
              ),
              const Divider(height: 6,color: Colors.white,thickness: 2,),
              const SizedBox(
                height: 15,
              ),
              CustomBottom(
                nameTheBottom: '\$25,589 Payment Done',
                iconName: Icons.circle_outlined,
                routName: () => Get.back(),
              ),
              const SizedBox(height: 8),
              CustomBottom(
                nameTheBottom: '\$85,589 Payment Done',
                iconName: Icons.circle_outlined,
                routName: () => Get.back(),
              ),
            ],
          )),
    );
  }
}