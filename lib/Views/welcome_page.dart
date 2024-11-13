import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Views/car_main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Container(
          margin: const EdgeInsets.only(top: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              const Text(
                'Eays Way To Buy \nYour Dream Car',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontFamily: 'Bold'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'By using the car, you can move quickly\nfrom one place to another\nin your daily life.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'lib/Assets/Image/car0.png',
                height: 350,
                fit: BoxFit.scaleDown,
              ),             
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(
                        () => CarMainScreen(),
                        transition: Transition.leftToRight,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      elevation: WidgetStateProperty.all(0),
                      minimumSize:WidgetStateProperty.all<Size>(const Size(280, 55)),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.2,
                          fontFamily: 'Bold'),
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
}